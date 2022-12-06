import 'package:ecommerce/ui/theme.dart';
import 'package:flutter/material.dart';

class ProductToCartButton extends StatelessWidget {
  final double price;
  final void Function() onTap;

  const ProductToCartButton({super.key, required this.price, required this.onTap});

  static const kTextStyle = TextStyle(
      fontFamily: 'MarkPro',
      color: ThemeColors.kNavBarItemColor,
      fontSize: 20,
      fontWeight: FontWeight.bold);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          alignment: Alignment.center,
          height: 54,
          decoration: const BoxDecoration(
            color: ThemeColors.kAccentColor,
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 42),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Add to cart', style: kTextStyle),
                Text(formatPrice(price), style: kTextStyle),
              ],
            ),
          ),
        ),
        Positioned.fill(
          child: Material(
            color: Colors.transparent,
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            child: InkWell(
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              onTap: onTap,
            ),
          ),
        )
      ],
    );
  }
}
