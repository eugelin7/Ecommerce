import 'package:ecommerce/=models=/category.dart';
import 'package:ecommerce/ui/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CategoryItem extends StatelessWidget {
  static const size = 71.0;
  static const iconSize = 30.0;

  final bool isSelected;
  final Category item;
  final void Function(int id) onTapCallback;

  const CategoryItem({
    Key? key,
    required this.isSelected,
    required this.item,
    required this.onTapCallback,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            Container(
              alignment: Alignment.center,
              width: size,
              height: size,
              margin: const EdgeInsets.fromLTRB(0, 10, 23, 0),
              decoration: BoxDecoration(
                color: isSelected ? ThemeColors.kAccentColor : ThemeColors.kSectionItemBackColor,
                borderRadius: const BorderRadius.all(
                  Radius.circular(size),
                ),
                boxShadow: [if (!isSelected) kDefaultBoxShadow],
              ),
              child: SvgPicture.asset(
                'assets/icons/${item.name.toLowerCase()}.svg',
                width: iconSize,
                height: iconSize,
                color:
                    isSelected ? ThemeColors.kNavBarItemColor : ThemeColors.kSectionItemIconColor,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: SizedBox(
                width: size,
                height: size,
                child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(size),
                    ),
                    onTap: isSelected ? null : () => onTapCallback(item.id),
                  ),
                ),
              ),
            )
          ],
        ),
        const SizedBox(height: 7),
        SizedBox(
          //color: Colors.transparent,
          width: size + 1,
          child: Align(
            alignment: Alignment.center,
            child: Text(
              item.name,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                  fontSize: 12.5,
                  letterSpacing: -0.15,
                  color: isSelected ? ThemeColors.kAccentColor : ThemeColors.kPrimaryTextColor,
                  fontWeight: FontWeight.w500),
            ),
          ),
        ),
      ],
    );
  }
}
