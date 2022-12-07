import 'package:dio/dio.dart';
import 'package:ecommerce/=models=/product.dart';
import 'package:ecommerce/=models=/hot_sales_item.dart';
import 'package:ecommerce/=models=/cart.dart';
import 'package:ecommerce/=models=/best_seller_item.dart';
import 'package:ecommerce/data/i_shop_date_service.dart';

class ShopDataService implements IShopDataService {
  static const kMainUrl = 'https://run.mocky.io/v3/654bd15e-b121-49ba-a588-960956b15175';
  static const kProductUrl = 'https://run.mocky.io/v3/6c14c560-15c6-4248-b9d2-b4508df7d4f5';
  static const kCartUrl = 'https://run.mocky.io/v3/53539a72-3c5f-4f30-bbb1-6ca10d42c149';

  late final Dio _dio;

  ShopDataService() {
    _dio = Dio();
  }

  List<HotSalesItem> _hotSalesList = [];
  List<BestSellerItem> _bestSellerList = [];

  @override
  Future<List<HotSalesItem>> fetchHotSales() async {
    if (_hotSalesList.isNotEmpty) {
      return _hotSalesList;
    }
    try {
      final response = await _dio.get(kMainUrl);
      final jsonArr = response.data['home_store'] as List<dynamic>;
      _hotSalesList = jsonArr.map((item) => HotSalesItem.fromJson(item)).toList();
      _bestSellerList = jsonArr.map((item) => BestSellerItem.fromJson(item)).toList();
      return _hotSalesList;
    } on DioError catch (e) {
      return Future.error(e.message);
    } catch (e) {
      return Future.error('Network error');
    }
  }

  @override
  Future<List<BestSellerItem>> fetchBestSellers() async {
    if (_bestSellerList.isNotEmpty) {
      return _bestSellerList;
    }
    try {
      final response = await _dio.get(kMainUrl);
      final jsonArr = response.data['best_seller'] as List<dynamic>;
      _hotSalesList = jsonArr.map((item) => HotSalesItem.fromJson(item)).toList();
      _bestSellerList = jsonArr.map((item) => BestSellerItem.fromJson(item)).toList();
      return _bestSellerList;
    } on DioError catch (e) {
      return Future.error(e.message);
    } catch (e) {
      return Future.error('Network error');
    }
  }

  @override
  Future<Cart> fetchCart() async {
    // TODO: implement fetchCart
    throw UnimplementedError();
  }

  @override
  Future<Product> fetchProduct() async {
    // TODO: implement fetchProduct
    throw UnimplementedError();
  }
}
