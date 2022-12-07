import 'package:ecommerce/=models=/best_seller_item.dart';
import 'package:ecommerce/=models=/cart.dart';
import 'package:ecommerce/=models=/hot_sales_item.dart';
import 'package:ecommerce/=models=/product.dart';

abstract class IShopDataService {
  Future<List<HotSalesItem>> fetchHotSales();
  Future<List<BestSellerItem>> fetchBestSellers();
  Future<Product> fetchProduct();
  Future<Cart> fetchCart();
}
