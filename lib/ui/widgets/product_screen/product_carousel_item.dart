import 'package:cached_network_image/cached_network_image.dart';
import 'package:ecommerce/ui/theme.dart';
import 'package:flutter/material.dart';

class ProductCarouselItem extends StatelessWidget {
  final String imagePath;

  const ProductCarouselItem({Key? key, required this.imagePath}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: CachedNetworkImage(
        imageUrl: imagePath,
        imageBuilder: (context, imageProvider) => Container(
          decoration: BoxDecoration(
            image: DecorationImage(image: imageProvider, fit: BoxFit.contain),
            border: Border.all(color: Colors.transparent),
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            color: Colors.white,
            boxShadow: [kDefaultBoxShadow],

            //shape: BoxShape.circle,
          ),
        ),
        placeholder: (_, __) => const Center(child: CircularProgressIndicator()),
        errorWidget: (_, __, ___) => const Center(child: Icon(Icons.error, size: 70)),
      ),
    );
  }
}
