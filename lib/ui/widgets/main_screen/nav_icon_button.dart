import 'package:ecommerce/ui/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NavIconButton extends StatelessWidget {
  final String iconName;
  final void Function() onTap;

  const NavIconButton({super.key, required this.iconName, required this.onTap});

  static const size = 44.0;
  static const iconSize = 18.0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          alignment: Alignment.center,
          width: size,
          height: size,
          color: Colors.transparent,
          child: SvgPicture.asset(
            'assets/icons/$iconName.svg',
            width: iconSize,
            height: iconSize,
            color: ThemeColors.kNavBarItemColor,
          ),
        ),
        SizedBox(
          width: size,
          height: size,
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              borderRadius: const BorderRadius.all(
                Radius.circular(size),
              ),
              onTap: onTap,
            ),
          ),
        )
      ],
    );
  }
}
