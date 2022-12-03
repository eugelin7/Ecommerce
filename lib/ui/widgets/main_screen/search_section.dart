import 'package:ecommerce/ui/theme.dart';
import 'package:ecommerce/ui/widgets/main_screen/search_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SearchSection extends StatelessWidget {
  const SearchSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 27),
      child: Row(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                boxShadow: [kDefaultBoxShadow],
                borderRadius: BorderRadius.circular(kSearchFieldBorderRadius),
              ),
              child: SizedBox(
                height: 34,
                child: TextField(
                  cursorColor: ThemeColors.kPrimaryTextColor,
                  cursorHeight: 17,
                  decoration: kTextFieldDecoration.copyWith(
                      prefixIcon: Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 16, 0),
                    child: SvgPicture.asset(
                      width: 15,
                      height: 15,
                      'assets/icons/search.svg',
                      color: ThemeColors.kAccentColor,
                    ),
                  )
                      // prefixIcon: Container(
                      //   color: Colors.yellow,
                      //   alignment: Alignment.center,
                      //   child: SizedBox(
                      //     width: 20,

                      //     child: SvgPicture.asset(
                      //       'assets/icons/search.svg',
                      //       color: ThemeColors.kAccentColor,
                      //     ),
                      //   ),
                      // ),
                      ),
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: ThemeColors.kPrimaryTextColor,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(width: 8),
          const SearchIconButton(iconName: 'search2')
        ],
      ),
    );
  }
}
