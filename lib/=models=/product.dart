import 'package:equatable/equatable.dart';

class Product with EquatableMixin {
  final String cpu;
  final String camera;
  final List<String> capacity;
  final List<String> color;
  final String id;
  final List<String> images;
  final bool isFavorites;
  final int price;
  final double rating;
  final String sd;
  final String ssd;
  final String title;

  Product({
    required this.cpu,
    required this.camera,
    required this.capacity,
    required this.color,
    required this.id,
    required this.images,
    required this.isFavorites,
    required this.price,
    required this.rating,
    required this.sd,
    required this.ssd,
    required this.title,
  });

  @override
  List<Object?> get props => [
        cpu,
        camera,
        capacity,
        color,
        id,
        images,
        isFavorites,
        price,
        rating,
        sd,
        ssd,
        title,
      ];

  factory Product.fromJson(Map<String, dynamic> json) => Product(
        cpu: json["CPU"],
        camera: json["camera"],
        capacity: List<String>.from(json["capacity"].map((x) => x)),
        color: List<String>.from(json["color"].map((x) => x)),
        id: json["id"],
        images: List<String>.from(json["images"].map((x) => x)),
        isFavorites: json["isFavorites"],
        price: json["price"],
        rating: json["rating"].toDouble(),
        sd: json["sd"],
        ssd: json["ssd"],
        title: json["title"],
      );
}
