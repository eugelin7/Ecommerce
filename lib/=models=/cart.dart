import 'package:ecommerce/=models=/cart_item.dart';

class Cart {
  Cart({
    required this.basket,
    required this.delivery,
    required this.id,
    required this.total,
  });

  final List<CartItem> basket;
  final String delivery;
  final String id;
  final int total;

  factory Cart.fromJson(Map<String, dynamic> json) => Cart(
        basket: List<CartItem>.from(json["basket"].map((x) => CartItem.fromJson(x))),
        delivery: json["delivery"],
        id: json["id"],
        total: json["total"],
      );
}
