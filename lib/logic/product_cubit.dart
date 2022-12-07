import 'package:bloc/bloc.dart';
import 'package:ecommerce/=models=/product.dart';
import 'package:ecommerce/data/i_shop_data_service.dart';
import 'package:equatable/equatable.dart';
import 'x_status.dart';

//------
// State

class ProductState extends Equatable {
  final XStatus status;
  final Product? product;
  final String? errorMessage;

  const ProductState({
    this.status = XStatus.initial,
    this.product,
    this.errorMessage,
  });

  @override
  List<Object?> get props => [status, product, errorMessage];
}

//------
// Cubit

class ProductCubit extends Cubit<ProductState> {
  final IShopDataService _shopDataService;

  ProductCubit({required IShopDataService shopDataService})
      : _shopDataService = shopDataService,
        super(const ProductState());

  Future<void> getProduct() async {
    emit(const ProductState(status: XStatus.inProgress));
    // TODO: remove this line later (this line is required just to check process)
    // await Future.delayed(const Duration(milliseconds: 1500));
    try {
      final product = await _shopDataService.fetchProduct();
      emit(ProductState(status: XStatus.success, product: product));
    } catch (e) {
      emit(ProductState(status: XStatus.failure, errorMessage: e.toString()));
    }
  }

  // void toInitial() {
  //   emit(const ProductState(status: XStatus.initial));
  // }
}
