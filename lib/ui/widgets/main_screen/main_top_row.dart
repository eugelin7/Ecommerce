import 'package:ecommerce/ui/theme.dart';
import 'package:ecommerce/ui/widgets/main_screen/filter_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainTopRow extends StatelessWidget {
  const MainTopRow({super.key});

  static const tapSize = 44.0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Transform.translate(
              offset: const Offset(0, -2),
              child: SvgPicture.asset(
                'assets/icons/map_label_small.svg',
                width: 16,
                height: 16,
                color: ThemeColors.kAccentColor,
              ),
            ),
            const SizedBox(width: 11),
            const Text(
              'Zihuatanejo, Gro',
              style: TextStyle(
                fontFamily: 'MarkPro',
                fontSize: 15,
                fontWeight: FontWeight.w500,
                color: ThemeColors.kPrimaryTextColor,
                letterSpacing: -0.4,
              ),
            ),
            const SizedBox(width: 8),
            Transform.rotate(
              angle: 3.14159265358 / 2,
              child: const Icon(
                Icons.arrow_forward_ios_outlined,
                size: 11,
                color: ThemeColors.kDropdownIconColor,
              ),
            ),
          ],
        ),
        Positioned(
            right: 2,
            top: -13,
            child: Stack(
              children: [
                SizedBox(
                  width: tapSize,
                  height: tapSize,
                  child: Align(
                    child: Container(
                      alignment: Alignment.center,
                      width: tapSize,
                      height: tapSize,
                      decoration: const BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                      ),
                      child: SvgPicture.asset(
                        'assets/icons/filter.svg',
                        width: 14,
                        height: 14,
                        color: ThemeColors.kPrimaryTextColor,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: tapSize,
                  height: tapSize,
                  child: Material(
                    color: Colors.transparent,
                    borderRadius: const BorderRadius.all(Radius.circular(8)),
                    child: InkWell(
                      borderRadius: const BorderRadius.all(Radius.circular(8)),
                      onTap: () {
                        showBottomSheet(context: context, builder: (_) => const FilterSheet());
                      },
                    ),
                  ),
                )
              ],
            )),
      ],
    );
  }
}
