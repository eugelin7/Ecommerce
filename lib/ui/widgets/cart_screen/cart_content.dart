import 'package:ecommerce/data/mock/mock_cart.dart';
import 'package:ecommerce/ui/theme.dart';
import 'package:ecommerce/ui/widgets/cart_screen/cart_checkout_button.dart';
import 'package:ecommerce/ui/widgets/cart_screen/cart_item_tile.dart';
import 'package:ecommerce/ui/widgets/cart_screen/cart_total_price.dart';
import 'package:flutter/material.dart';

class CartContent extends StatelessWidget {
  const CartContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: ThemeColors.kPrimaryTextColor,
        borderRadius: BorderRadius.all(
          Radius.circular(30),
        ),
      ),
      child: Column(
        children: [
          const SizedBox(width: double.infinity, height: 80),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: kMockCart.basket.map((item) => CartItemTile(item: item)).toList(),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 3),
            child: Divider(color: Colors.white.withOpacity(0.25), thickness: 2),
          ),
          CartTotalPrice(totalPrice: kMockCart.total.toDouble(), delivery: kMockCart.delivery),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 3),
            child: Divider(color: Colors.white.withOpacity(0.25), thickness: 1),
          ),
          CartCheckoutButton(onTap: () {})
        ],
      ),
    );
  }
}
