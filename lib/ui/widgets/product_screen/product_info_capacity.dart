import 'package:ecommerce/ui/theme.dart';
import 'package:flutter/material.dart';

class ProductInfoCapacity extends StatefulWidget {
  final List<String> capacities;

  const ProductInfoCapacity({super.key, required this.capacities});

  @override
  State<ProductInfoCapacity> createState() => _ProductInfoCapacityState();
}

class _ProductInfoCapacityState extends State<ProductInfoCapacity> {
  int _selectedIndex = 0;

  List<Widget> _colorsToWidgets() {
    List<Widget> array = [];
    for (var i = 0; i < widget.capacities.length; i++) {
      double rightMargin = (i == widget.capacities.length - 1) ? 0 : 12;
      array.add(GestureDetector(
        onTap: () {
          setState(() {
            _selectedIndex = i;
          });
        },
        child: Container(
          height: 30,
          alignment: Alignment.center,
          margin: EdgeInsets.only(right: rightMargin),
          padding: const EdgeInsets.symmetric(horizontal: 14),
          decoration: BoxDecoration(
            color: (i == _selectedIndex) ? ThemeColors.kAccentColor : Colors.transparent,
            borderRadius: const BorderRadius.all(Radius.circular(10)),
          ),
          child: Text(
            '${widget.capacities[i]} GB',
            style: TextStyle(
              fontFamily: 'MarkPro',
              fontSize: 13,
              fontWeight: FontWeight.bold,
              color: (i == _selectedIndex)
                  ? ThemeColors.kNavBarItemColor
                  : ThemeColors.kProductInfoTextColor,
            ),
          ),
        ),
      ));
    }
    return array;
  }

  @override
  Widget build(BuildContext context) {
    final colorItems = _colorsToWidgets();
    return Row(children: colorItems);
  }
}
