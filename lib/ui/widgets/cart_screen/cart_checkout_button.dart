import 'package:ecommerce/ui/theme.dart';
import 'package:flutter/material.dart';

class CartCheckoutButton extends StatelessWidget {
  final void Function() onTap;

  const CartCheckoutButton({super.key, required this.onTap});

  static const kTextStyle = TextStyle(
      fontFamily: 'MarkPro',
      color: ThemeColors.kNavBarItemColor,
      fontSize: 20,
      fontWeight: FontWeight.bold);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(44, 19, 44, 44),
      child: Stack(
        children: [
          Container(
            alignment: Alignment.center,
            height: 54,
            decoration: const BoxDecoration(
              color: ThemeColors.kAccentColor,
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 42),
              child: Text('Checkout', style: kTextStyle),
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
      ),
    );
  }
}
