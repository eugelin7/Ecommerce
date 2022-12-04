import 'package:ecommerce/ui/theme.dart';
import 'package:ecommerce/ui/widgets/custom_dropdown.dart';
import 'package:flutter/material.dart';

const List<String> kBrandItems = ['Samsung', 'Xiaomi', 'Motorola'];

class FilterSheetBrandSection extends StatefulWidget {
  const FilterSheetBrandSection({super.key});

  @override
  State<FilterSheetBrandSection> createState() => _FilterSheetBrandSectionState();
}

class _FilterSheetBrandSectionState extends State<FilterSheetBrandSection> {
  String? _filterValue;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kBottomSheetPadding),
      child: Column(
        children: [
          Row(
            children: const [
              Text(
                'Brand',
                style: TextStyle(
                  color: ThemeColors.kPrimaryTextColor,
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          const SizedBox(height: 6),
          CustomDropdown(
            hint: 'Select brand',
            dropdownItems: kBrandItems,
            dropdownWidth: MediaQuery.of(context).size.width - kBottomSheetPadding * 2 - 2,
            offset: const Offset(1, 0),
            itemHeight: 34,
            value: _filterValue,
            selectedItemBuilder: (context) {
              return kBrandItems
                  .map((item) => Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: Text(
                          item,
                          style: const TextStyle(
                            color: ThemeColors.kPrimaryTextColor,
                            fontSize: 18,
                          ),
                        ),
                      ))
                  .toList();
            },
            onChanged: (item) {
              setState(() {
                _filterValue = item;
              });
            },
            dropdownDecoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.white,
            ),
            dropdownElevation: 2,
          ),
        ],
      ),
    );
  }
}
