import 'package:ecommerce/ui/theme.dart';
import 'package:ecommerce/ui/widgets/product_screen/product_info_content.dart';
import 'package:ecommerce/ui/widgets/product_screen/product_screen_title.dart';
import 'package:ecommerce/ui/widgets/product_screen/product_slider.dart';
import 'package:flutter/material.dart';

class ProductScreen extends StatelessWidget {
  static const name = 'product_screen';
  static const path = '/product';

  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      extendBodyBehindAppBar: true,
      body: Container(
        color: ThemeColors.kBackgroundColor,
        child: Column(
          children: const [
            SizedBox(width: double.infinity, height: 52),
            ProductScreenTitle(),
            SizedBox(height: 8),
            Expanded(child: ProductSlider()),
            SizedBox(height: 10),
            ProductInfoContent(),
          ],
        ),
      ),
    );
  }
}
