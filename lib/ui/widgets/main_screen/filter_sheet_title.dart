import 'package:ecommerce/ui/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FilterSheetTitle extends StatelessWidget {
  const FilterSheetTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.center,
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width - kBottomSheetPadding * 2,
          height: 38,
        ),
        const Text(
          'Filter options',
          style: TextStyle(
            color: ThemeColors.kPrimaryTextColor,
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
        const Positioned(left: -4, child: _CloseSheetButton()),
        const Positioned(right: -10, child: _DoneButton()),
      ],
    );
  }
}

//-------------------------------------

class _CloseSheetButton extends StatelessWidget {
  static const tapSize = 44.0;
  static const size = 37.0;
  static const iconSize = 11.0;
  static const borderRadius = 10.0;

  const _CloseSheetButton();

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
                color: ThemeColors.kPrimaryTextColor,
                borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
              ),
              child: SvgPicture.asset(
                'assets/icons/close.svg',
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
            borderRadius: const BorderRadius.all(Radius.circular(borderRadius)),
            child: InkWell(
              borderRadius: const BorderRadius.all(Radius.circular(borderRadius)),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ),
        )
      ],
    );
  }
}

//---------------------

class _DoneButton extends StatelessWidget {
  static const size = 37.0;
  static const borderRadius = 10.0;

  const _DoneButton();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: size,
          decoration: const BoxDecoration(
            color: ThemeColors.kAccentColor,
            borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
          ),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Center(
              child: Text(
                'Done',
                style: TextStyle(
                  color: ThemeColors.kHotSalesTextColor,
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ),
        Positioned.fill(
          child: SizedBox(
            child: Material(
              color: Colors.transparent,
              borderRadius: const BorderRadius.all(Radius.circular(borderRadius)),
              child: InkWell(
                borderRadius: const BorderRadius.all(Radius.circular(borderRadius)),
                onTap: () {
                  print('Done');
                },
              ),
            ),
          ),
        ),
      ],
    );
  }
}
