import 'package:ecommerce/data/mock_product.dart';
import 'package:ecommerce/ui/widgets/product_screen/product_carousel.dart';
import 'package:ecommerce/ui/widgets/product_screen/product_info.dart';
import 'package:ecommerce/ui/widgets/product_screen/product_screen_title.dart';
import 'package:flutter/material.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      extendBodyBehindAppBar: true,
      body: Container(
        color: const Color(0xFFF5F5F5),
        child: Column(
          children: [
            const SizedBox(width: double.infinity, height: 52),
            const ProductScreenTitle(),
            const SizedBox(height: 8),
            Expanded(
              child: ProductCarousel(images: kMockProduct.images),
            ),
            const SizedBox(height: 10),
            ProductInfo(product: kMockProduct),
          ],
        ),
      ),
    );
  }
}
