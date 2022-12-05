import 'package:ecommerce/ui/theme.dart';
import 'package:ecommerce/ui/widgets/custom_dropdown.dart';
import 'package:flutter/material.dart';

class FilterSheetDropdown extends StatefulWidget {
  final String title, hintText;
  final List<String> items;

  const FilterSheetDropdown({
    super.key,
    required this.title,
    required this.hintText,
    required this.items,
  });

  @override
  State<FilterSheetDropdown> createState() => _FilterSheetDropdownState();
}

class _FilterSheetDropdownState extends State<FilterSheetDropdown> {
  String? _filterValue;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kBottomSheetPadding),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                widget.title,
                style: const TextStyle(
                  color: ThemeColors.kPrimaryTextColor,
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          const SizedBox(height: 6),
          CustomDropdown(
            hint: widget.hintText,
            dropdownItems: widget.items,
            dropdownWidth: MediaQuery.of(context).size.width - kBottomSheetPadding * 2 - 2,
            offset: const Offset(1, 0),
            itemHeight: 34,
            value: _filterValue,
            selectedItemBuilder: (context) {
              return widget.items
                  .map((item) => Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: Text(
                          item,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
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
