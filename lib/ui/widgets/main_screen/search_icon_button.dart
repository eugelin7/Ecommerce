import 'package:ecommerce/ui/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SearchIconButton extends StatelessWidget {
  static const tapSize = 44.0;
  static const size = 34.0;
  static const iconSize = 15.0;

  final String iconName;

  const SearchIconButton({super.key, required this.iconName});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: tapSize,
          height: tapSize,
          child: Align(
            child: Container(
              alignment: Alignment.center,
              width: size,
              height: size,
              decoration: const BoxDecoration(
                color: ThemeColors.kAccentColor,
                borderRadius: BorderRadius.all(Radius.circular(size)),
              ),
              child: SvgPicture.asset(
                'assets/icons/$iconName.svg',
                width: iconSize,
                height: iconSize,
                color: ThemeColors.kNavBarItemColor,
              ),
            ),
          ),
        ),
        SizedBox(
          width: tapSize,
          height: tapSize,
          child: Material(
            color: Colors.transparent,
            borderRadius: const BorderRadius.all(Radius.circular(size)),
            child: InkWell(
              borderRadius: const BorderRadius.all(Radius.circular(size)),
              onTap: () {},
            ),
          ),
        )
      ],
    );
  }
}
