import 'package:bloc/bloc.dart';
import 'package:ecommerce/=models=/cart.dart';
import 'package:ecommerce/data/i_shop_data_service.dart';
import 'package:ecommerce/logic/x_status.dart';
import 'package:equatable/equatable.dart';

//------
// State

class CartState extends Equatable {
  final XStatus status;
  final List<int> cartProductsIds;
  final Cart? cart;
  final String? errorMessage;

  const CartState({
    this.status = XStatus.initial,
    this.cartProductsIds = const [],
    this.cart,
    this.errorMessage,
  });

  @override
  List<Object?> get props => [status, cartProductsIds, cart, errorMessage];
}

//------
// Cubit

class CartCubit extends Cubit<CartState> {
  final IShopDataService _shopDataService;

  final List<int> _cartProducts = [];

  //CartCubit() : super(const CartState());
  CartCubit({required IShopDataService shopDataService})
      : _shopDataService = shopDataService,
        super(const CartState());

  void addProductId(int id) {
    //if (!_cartProducts.contains(id)) {
    _cartProducts.add(id);
    emit(CartState(cartProductsIds: [..._cartProducts]));
    //}
  }

  void removeProductId(int id) {
    //if (_cartProducts.contains(id)) {
    _cartProducts.remove(id);
    emit(CartState(cartProductsIds: [..._cartProducts]));
    //}
  }

  Future<void> getCart() async {
    emit(const CartState(status: XStatus.inProgress));
    // TODO: remove this line later (this line is required just to check process)
    // await Future.delayed(const Duration(milliseconds: 1500));
    try {
      final cart = await _shopDataService.fetchCart();
      emit(
        CartState(
          status: XStatus.success,
          cart: cart,
          cartProductsIds: [..._cartProducts],
        ),
      );
    } catch (e) {
      emit(
        CartState(
          status: XStatus.failure,
          errorMessage: e.toString(),
          cartProductsIds: [..._cartProducts],
        ),
      );
    }
  }
}
