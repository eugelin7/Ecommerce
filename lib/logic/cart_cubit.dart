import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

//------
// State

class CartState extends Equatable {
  final List<int> cartProducts;

  const CartState({
    this.cartProducts = const [],
  });

  @override
  List<Object?> get props => [cartProducts];
}

//------
// Cubit

class CartCubit extends Cubit<CartState> {
  final List<int> _cartProducts = [];

  CartCubit() : super(const CartState());

  void addProductId(int id) {
    //if (!_cartProducts.contains(id)) {
    _cartProducts.add(id);
    emit(CartState(cartProducts: [..._cartProducts]));
    //}
  }

  void removeProductId(int id) {
    //if (_cartProducts.contains(id)) {
    _cartProducts.remove(id);
    emit(CartState(cartProducts: [..._cartProducts]));
    //}
  }
}
