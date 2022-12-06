import 'package:ecommerce/ui/theme.dart';
import 'package:flutter/material.dart';

class CartTotalPrice extends StatelessWidget {
  final double totalPrice;
  final String delivery;

  const CartTotalPrice({super.key, required this.totalPrice, required this.delivery});

  static const kTextStyle = TextStyle(
    fontFamily: 'MarkPro',
    color: ThemeColors.kNavBarItemColor,
    fontSize: 15,
  );

  static const kTextStyleBold = TextStyle(
    fontFamily: 'MarkPro',
    color: ThemeColors.kNavBarItemColor,
    fontSize: 15,
    fontWeight: FontWeight.bold,
  );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(54, 9, 54, 17),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text('Total', style: kTextStyle),
              SizedBox(height: 12),
              Text('Delivery', style: kTextStyle),
            ],
          ),
          const Spacer(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(formatPrice(totalPrice), style: kTextStyleBold),
              const SizedBox(height: 12),
              Text(delivery, style: kTextStyleBold),
            ],
          ),
        ],
      ),
    );
  }
}
