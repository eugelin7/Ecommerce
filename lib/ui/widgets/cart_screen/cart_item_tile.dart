import 'package:ecommerce/=models=/cart_item.dart';
import 'package:ecommerce/ui/theme.dart';
import 'package:ecommerce/ui/widgets/cart_screen/cart_item_counter.dart';
import 'package:ecommerce/ui/widgets/cart_screen/cart_item_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CartItemTile extends StatelessWidget {
  final CartItem item;

  const CartItemTile({super.key, required this.item});

  static const kTextStyleTitle = TextStyle(
      fontFamily: 'MarkPro',
      color: ThemeColors.kNavBarItemColor,
      fontSize: 20,
      fontWeight: FontWeight.w500);

  static const kTextStylePrice = TextStyle(
      fontFamily: 'MarkPro',
      color: ThemeColors.kAccentColor,
      fontSize: 20,
      fontWeight: FontWeight.w500);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(30, 0, 23, 44),
      child: SizedBox(
        height: 88,
        child: Row(
          children: [
            CartItemImage(imagePath: item.images),
            const SizedBox(width: 17),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 3),
                  Text(
                    item.title,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: kTextStyleTitle,
                  ),
                  const SizedBox(height: 8),
                  Text(formatPrice(item.price.toDouble()), style: kTextStylePrice),
                ],
              ),
            ),
            const SizedBox(width: 10),
            Container(
              //color: Colors.green.withOpacity(0.5),
              width: 40,
              alignment: Alignment.center,
              child: CartItemCounter(itemId: item.id),
            ),
            const SizedBox(width: 3),
            SizedBox(
              width: 30,
              child: SvgPicture.asset(
                'assets/icons/delete.svg',
                width: 16,
                height: 16,
                color: const Color(0xFF36364D),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
