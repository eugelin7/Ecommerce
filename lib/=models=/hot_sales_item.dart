import 'package:equatable/equatable.dart';

class HotSalesItem with EquatableMixin {
  const HotSalesItem({
    required this.id,
    required this.isNew,
    required this.title,
    required this.subtitle,
    required this.picture,
    required this.isBuy,
  });

  final int id;
  final bool isNew;
  final String title;
  final String subtitle;
  final String picture;
  final bool isBuy;

  @override
  List<Object?> get props => [id, isNew, title, subtitle, picture, isBuy];

  factory HotSalesItem.fromJson(Map<String, dynamic> json) => HotSalesItem(
        id: json["id"],
        isNew: json["is_new"] ?? false,
        title: json["title"],
        subtitle: json["subtitle"],
        picture: json["picture"],
        isBuy: json["is_buy"],
      );
}
