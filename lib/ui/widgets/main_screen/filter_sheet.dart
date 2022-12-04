import 'package:ecommerce/ui/theme.dart';
import 'package:ecommerce/ui/widgets/custom_dropdown.dart';
import 'package:ecommerce/ui/widgets/main_screen/filter_sheet_brand_section.dart';
import 'package:ecommerce/ui/widgets/main_screen/filter_sheet_title.dart';
import 'package:flutter/material.dart';

class FilterSheet extends StatelessWidget {
  const FilterSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 375,
      decoration: BoxDecoration(
        color: ThemeColors.kSectionItemBackColor,
        borderRadius: const BorderRadius.all(
          Radius.circular(30),
        ),
        boxShadow: [kDefaultBoxShadowHeavy],
      ),
      padding: const EdgeInsets.only(top: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          SizedBox(width: double.infinity),
          FilterSheetTitle(),
          SizedBox(height: 39),
          FilterSheetBrandSection(),
        ],
      ),
    );
  }
}
