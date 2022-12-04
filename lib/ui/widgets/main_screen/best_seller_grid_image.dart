import 'package:cached_network_image/cached_network_image.dart';
import 'package:ecommerce/ui/theme.dart';
import 'package:flutter/material.dart';

class BestSellerGridImage extends StatelessWidget {
  final String imagePath;

  const BestSellerGridImage({Key? key, required this.imagePath}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: imagePath,
      imageBuilder: (context, imageProvider) => Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: imageProvider, fit: BoxFit.fill),
          //borderRadius: const BorderRadius.all(Radius.circular(kCarouselItemBorderRadius)),
        ),
      ),
      placeholder: (_, __) => const Center(child: CircularProgressIndicator()),
      errorWidget: (_, __, ___) =>
          const Center(child: Icon(Icons.error, size: 70, color: ThemeColors.kErrorIconColor)),
    );
  }
}
