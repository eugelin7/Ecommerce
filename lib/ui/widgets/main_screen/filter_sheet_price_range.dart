import 'package:ecommerce/ui/theme.dart';
import 'package:ecommerce/ui/widgets/custom_dropdown.dart';
import 'package:flutter/material.dart';

class FilterSheetPriceRange extends StatefulWidget {
  final String title, hintText;
  final double minValue, maxValue;

  const FilterSheetPriceRange({
    super.key,
    required this.title,
    required this.hintText,
    required this.minValue,
    required this.maxValue,
  });

  @override
  State<FilterSheetPriceRange> createState() => _FilterSheetPriceRangeState();
}

class _FilterSheetPriceRangeState extends State<FilterSheetPriceRange> {
  List<String> _dropdownItems = [];
  String? _filterValue;
  bool _isRangeSelectorVisible = false;

  late double _sliderMinValue;
  late double _sliderMaxValue;

  @override
  void initState() {
    _sliderMinValue = widget.minValue;
    _sliderMaxValue = widget.maxValue;

    super.initState();
  }

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
          _isRangeSelectorVisible
              ? SizedBox(
                  height: 37,
                  child: Row(
                    children: [
                      const SizedBox(width: 10),
                      Expanded(
                        child: SliderTheme(
                          data: SliderTheme.of(context).copyWith(
                            trackHeight: 2.0,
                            thumbColor: ThemeColors.kAccentColor,
                            activeTrackColor: ThemeColors.kAccentColor.withOpacity(0.7),
                            inactiveTrackColor: ThemeColors.kAccentColor.withOpacity(0.4),
                            overlayShape: SliderComponentShape.noOverlay,
                            showValueIndicator: ShowValueIndicator.always,
                            valueIndicatorColor: const Color.fromRGBO(255, 197, 184, 1.0),
                            valueIndicatorTextStyle: const TextStyle(
                              fontSize: 13,
                              color: ThemeColors.kPrimaryTextColor,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          child: RangeSlider(
                            min: widget.minValue,
                            max: widget.maxValue,
                            values: RangeValues(_sliderMinValue, _sliderMaxValue),
                            labels: RangeLabels(
                                '${_sliderMinValue.toInt()}', '${_sliderMaxValue.toInt()}'),
                            onChanged: (values) {
                              setState(() {
                                _sliderMinValue = values.start;
                                _sliderMaxValue = values.end;
                              });
                            },
                          ),
                        ),
                      ),
                      const SizedBox(width: 20),
                      TextButton(
                        onPressed: () {
                          setState(() {
                            _isRangeSelectorVisible = false;
                            _filterValue = 'range';
                            _dropdownItems = [_filterValue!];
                          });
                        },
                        child: const Text(
                          'Ok',
                          style: TextStyle(color: ThemeColors.kAccentColor),
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          setState(() {
                            _isRangeSelectorVisible = false;
                          });
                        },
                        child: Text(
                          'Cancel',
                          style: TextStyle(color: ThemeColors.kAccentColor.withOpacity(0.8)),
                        ),
                      ),
                    ],
                  ),
                )
              : GestureDetector(
                  onTap: () {
                    setState(() {
                      _dropdownItems = [];
                      _isRangeSelectorVisible = true;
                    });
                  },
                  child: Stack(
                    children: [
                      CustomDropdown(
                        hint: widget.hintText,
                        dropdownItems: _dropdownItems,
                        dropdownWidth:
                            MediaQuery.of(context).size.width - kBottomSheetPadding * 2 - 2,
                        offset: const Offset(1, 0),
                        itemHeight: 34,
                        value: _filterValue,
                        selectedItemBuilder: (context) {
                          return [
                            Padding(
                                padding: const EdgeInsets.only(top: 6),
                                child: Text(
                                  '${formatPrice(_sliderMinValue)} \u{2014} ${formatPrice(_sliderMaxValue)}',
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: const TextStyle(
                                    color: ThemeColors.kPrimaryTextColor,
                                    fontSize: 18,
                                  ),
                                ))
                          ];
                        },
                        onChanged: (item) {},
                      ),
                      Positioned.fill(
                        child: Container(
                          color: Colors.transparent,
                        ),
                      )
                    ],
                  ),
                ),
        ],
      ),
    );
  }
}
