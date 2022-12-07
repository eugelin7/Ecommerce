import 'package:equatable/equatable.dart';

class BestSellerItem with EquatableMixin {
  BestSellerItem({
    required this.id,
    required this.isFavorites,
    required this.title,
    required this.priceWithoutDiscount,
    required this.discountPrice,
    required this.picture,
  });

  final int id;
  final bool isFavorites;
  final String title;
  final double priceWithoutDiscount;
  final double discountPrice;
  final String picture;

  @override
  List<Object?> get props => [
        id,
        isFavorites,
        title,
        priceWithoutDiscount,
        discountPrice,
        picture,
      ];

  factory BestSellerItem.fromJson(Map<String, dynamic> json) => BestSellerItem(
        id: json["id"],
        isFavorites: json["is_favorites"],
        title: json["title"],
        priceWithoutDiscount: double.tryParse(json["price_without_discount"].toString()) ?? 0,
        discountPrice: double.tryParse(json["discount_price"].toString()) ?? 0,
        picture: json["picture"],
      );
}
