import 'package:ecommerce/ui/theme.dart';
import 'package:ecommerce/ui/widgets/cart_screen/cart_content.dart';
import 'package:ecommerce/ui/widgets/cart_screen/cart_screen_title.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      extendBodyBehindAppBar: true,
      body: Container(
        color: ThemeColors.kBackgroundColor,
        child: Column(
          children: [
            const SizedBox(width: double.infinity, height: 52),
            const CartScreenTitle(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: kContentBigPadding + 2, vertical: 50),
              child: Row(
                children: const [
                  Text('My Cart',
                      style: TextStyle(
                          fontFamily: 'MarkPro',
                          color: ThemeColors.kPrimaryTextColor,
                          fontSize: 35,
                          fontWeight: FontWeight.bold)),
                ],
              ),
            ),
            const Expanded(
              child: CartContent(),
            ),
          ],
        ),
      ),
    );
  }
}
