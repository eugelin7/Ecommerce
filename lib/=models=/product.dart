class Product {
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

  // Map<String, dynamic> toJson() => {
  //     "CPU": cpu,
  //     "camera": camera,
  //     "capacity": List<dynamic>.from(capacity.map((x) => x)),
  //     "color": List<dynamic>.from(color.map((x) => x)),
  //     "id": id,
  //     "images": List<dynamic>.from(images.map((x) => x)),
  //     "isFavorites": isFavorites,
  //     "price": price,
  //     "rating": rating,
  //     "sd": sd,
  //     "ssd": ssd,
  //     "title": title,
  // };
}
