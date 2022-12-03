import 'package:ecommerce/ui/theme.dart';
import 'package:ecommerce/ui/widgets/main_screen/icon_nav_button.dart';
import 'package:flutter/material.dart';

class BottomNavPanel extends StatelessWidget {
  const BottomNavPanel({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 72,
      alignment: Alignment.center,
      decoration: const BoxDecoration(
        color: ThemeColors.kPrimaryTextColor,
        borderRadius: BorderRadius.all(
          Radius.circular(30),
        ),
      ),
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.66,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: const [
                SizedBox(
                  height: 8,
                  width: 8,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      color: ThemeColors.kNavBarItemColor,
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                    ),
                  ),
                ),
                SizedBox(width: 7),
                Text(
                  'Explorer',
                  style: TextStyle(
                      color: ThemeColors.kNavBarItemColor,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(width: 12),
            const IconNavButton(iconName: 'shop'),
            const IconNavButton(iconName: 'favorites'),
            const IconNavButton(iconName: 'user'),
          ],
        ),
      ),
    );
  }
}
