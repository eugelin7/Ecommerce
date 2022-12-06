import 'package:cached_network_image/cached_network_image.dart';
import 'package:ecommerce/ui/theme.dart';
import 'package:flutter/material.dart';

class CartItemImage extends StatelessWidget {
  final String imagePath;

  const CartItemImage({Key? key, required this.imagePath}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: imagePath,
      imageBuilder: (context, imageProvider) => Container(
        width: 88,
        height: 88,
        decoration: BoxDecoration(
          image: DecorationImage(image: imageProvider, fit: BoxFit.contain),
          border: Border.all(color: Colors.transparent),
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          color: Colors.white,
        ),
      ),
      placeholder: (_, __) => const Center(child: CircularProgressIndicator()),
      errorWidget: (_, __, ___) => const Center(
        child: Icon(Icons.error, size: 50, color: ThemeColors.kErrorIconColor),
      ),
    );
  }
}
