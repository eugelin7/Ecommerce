import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RoundedIconButton extends StatelessWidget {
  final Color color;
  final String svgIconName;
  final Color iconColor;
  final void Function() onTap;
  final double tapSize;
  final double size;
  final double iconSize;
  final double borderRadius;

  const RoundedIconButton({
    super.key,
    required this.color,
    required this.svgIconName,
    required this.iconColor,
    required this.onTap,
    this.tapSize = 44,
    this.size = 37,
    this.iconSize = 11,
    this.borderRadius = 10,
  });

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
              decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
              ),
              child: SvgPicture.asset(
                'assets/icons/$svgIconName.svg',
                width: iconSize,
                height: iconSize,
                color: iconColor,
              ),
            ),
          ),
        ),
        SizedBox(
          width: tapSize,
          height: tapSize,
          child: Material(
            color: Colors.transparent,
            borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
            child: InkWell(
              borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
              onTap: onTap,
            ),
          ),
        )
      ],
    );
  }
}
