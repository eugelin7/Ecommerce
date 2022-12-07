import 'package:ecommerce/data/mock/filter_data.dart';
import 'package:ecommerce/ui/theme.dart';
import 'package:ecommerce/ui/widgets/main_screen/filter_sheet_dropdown.dart';
import 'package:ecommerce/ui/widgets/main_screen/filter_sheet_price_range.dart';
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
          SizedBox(height: 42),
          FilterSheetDropdown(title: 'Brands', items: kBrands, hintText: 'Select brand...'),
          SizedBox(height: 15),
          FilterSheetPriceRange(
            title: 'Price',
            hintText: 'Select price range...',
            minValue: 0,
            maxValue: 10000,
          ),
          SizedBox(height: 15),
          FilterSheetDropdown(title: 'Sizes', items: kSizes, hintText: 'Select size...'),
        ],
      ),
    );
  }
}
