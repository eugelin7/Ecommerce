import 'package:ecommerce/ui/theme.dart';
import 'package:ecommerce/ui/widgets/rounded_icon_button.dart';
import 'package:flutter/material.dart';

class CartScreenTitle extends StatelessWidget {
  const CartScreenTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kContentBigPadding),
      child: Row(
        children: [
          RoundedIconButton(
            color: ThemeColors.kPrimaryTextColor,
            svgIconName: 'back_arrow',
            iconColor: ThemeColors.kNavBarItemColor,
            iconSize: 14,
            onTap: () {},
          ),
          const Expanded(
            child: Text(
              'Add address',
              textAlign: TextAlign.end,
              style: TextStyle(
                color: ThemeColors.kPrimaryTextColor,
                fontSize: 15,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          const SizedBox(width: 10),
          RoundedIconButton(
            color: ThemeColors.kAccentColor,
            svgIconName: 'map_label',
            iconColor: ThemeColors.kNavBarItemColor,
            iconSize: 18,
            onTap: () {},
          )
        ],
      ),
    );
  }
}
