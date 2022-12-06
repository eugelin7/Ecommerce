import 'package:ecommerce/ui/theme.dart';
import 'package:flutter/material.dart';

class CartItemCounter extends StatefulWidget {
  final int itemId;

  const CartItemCounter({super.key, required this.itemId});

  @override
  State<CartItemCounter> createState() => _CartItemCounterState();
}

class _CartItemCounterState extends State<CartItemCounter> {
  int _count = 1;

  static const kTextStyle = TextStyle(
    fontFamily: 'MarkPro',
    color: ThemeColors.kNavBarItemColor,
    fontSize: 20,
    fontWeight: FontWeight.w500,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 26,
      height: 68,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(28)),
        color: Color(0xFF282843),
      ),
      child: Column(
        children: [
          Expanded(
            child: GestureDetector(
              onTap: () {
                if (_count > 1) {
                  setState(() {
                    _count--;
                  });
                }
              },
              child: const Text('-', style: kTextStyle),
            ),
          ),
          Expanded(child: Text('$_count', style: kTextStyle)),
          Expanded(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  _count++;
                });
              },
              child: const Text('+', style: kTextStyle),
            ),
          ),
          const SizedBox(height: 3)
        ],
      ),
    );
  }
}
