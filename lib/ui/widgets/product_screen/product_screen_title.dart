import 'package:ecommerce/data/mock_product.dart';
import 'package:ecommerce/ui/theme.dart';
import 'package:ecommerce/ui/widgets/rounded_icon_button.dart';
import 'package:flutter/material.dart';

class ProductScreenTitle extends StatelessWidget {
  const ProductScreenTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kContentPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          RoundedIconButton(
            color: ThemeColors.kPrimaryTextColor,
            svgIconName: 'back_arrow',
            iconColor: ThemeColors.kNavBarItemColor,
            iconSize: 14,
            onTap: () {},
          ),
          const Text(
            'Product Details',
            style: TextStyle(
              color: ThemeColors.kPrimaryTextColor,
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          RoundedIconButton(
            color: ThemeColors.kAccentColor,
            svgIconName: 'shop',
            iconColor: ThemeColors.kNavBarItemColor,
            iconSize: 14,
            onTap: () {},
          )
        ],
      ),
    );
  }
}
