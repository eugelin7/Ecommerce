class CartItem {
  CartItem({
    required this.id,
    required this.images,
    required this.price,
    required this.title,
  });

  final int id;
  final String images;
  final int price;
  final String title;

  factory CartItem.fromJson(Map<String, dynamic> json) => CartItem(
        id: json["id"],
        images: json["images"],
        price: json["price"],
        title: json["title"],
      );
}
