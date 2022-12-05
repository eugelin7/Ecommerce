import 'package:ecommerce/ui/theme.dart';
import 'package:flutter/material.dart';

class ProductInfoColor extends StatefulWidget {
  final List<String> colors;

  const ProductInfoColor({super.key, required this.colors});

  @override
  State<ProductInfoColor> createState() => _ProductInfoColorState();
}

class _ProductInfoColorState extends State<ProductInfoColor> {
  int _selectedIndex = 0;

  List<Widget> _colorsToWidgets() {
    List<Widget> array = [];
    for (var i = 0; i < widget.colors.length; i++) {
      array.add(GestureDetector(
        onTap: () {
          setState(() {
            _selectedIndex = i;
          });
        },
        child: Container(
          width: 40,
          height: 40,
          margin: const EdgeInsets.only(left: 16),
          decoration: BoxDecoration(
            color: HexColor.fromHex(widget.colors[i]),
            shape: BoxShape.circle,
          ),
          child: (i == _selectedIndex)
              ? Icon(
                  Icons.check_rounded,
                  size: 26,
                  color: HexColor.fromHex(widget.colors[i]).invertColor(),
                )
              : null,
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
