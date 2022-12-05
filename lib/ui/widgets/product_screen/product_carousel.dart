import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce/ui/widgets/product_screen/product_carousel_item.dart';
import 'package:flutter/material.dart';

class ProductCarousel extends StatelessWidget {
  final List<String> images;

  const ProductCarousel({super.key, required this.images});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      //carouselController: _controller,
      options: CarouselOptions(
        height: 350,
        initialPage: 0,
        viewportFraction: 0.7,
        enlargeCenterPage: true,
      ),
      items: images.map((item) => ProductCarouselItem(imagePath: item)).toList(),
    );
  }
}
