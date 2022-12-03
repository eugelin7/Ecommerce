import 'package:ecommerce/=models=/hot_sales_item.dart';
import 'package:ecommerce/ui/theme.dart';
import 'package:ecommerce/ui/widgets/main_screen/carousel_buy_button.dart';
import 'package:ecommerce/ui/widgets/main_screen/carousel_image.dart';
import 'package:flutter/material.dart';

class CarouselItem extends StatelessWidget {
  final HotSalesItem item;

  const CarouselItem({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kContentPadding),
      child: Stack(children: [
        CarouselImage(imagePath: item.picture),
        Container(
          decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.8),
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(kCarouselItemBorderRadius),
              bottomLeft: Radius.circular(kCarouselItemBorderRadius),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 14, 20, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 27,
                  height: 27,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: (item.isNew)
                        ? ThemeColors.kAccentColor
                        : ThemeColors.kHotSalesTextColor.withOpacity(0.7),
                    borderRadius: const BorderRadius.all(Radius.circular(30)),
                  ),
                  child: (item.isNew)
                      ? const Text(
                          'New',
                          style: TextStyle(
                              fontFamily: 'SFProDisplay',
                              color: ThemeColors.kHotSalesTextColor,
                              fontSize: 10,
                              fontWeight: FontWeight.bold),
                        )
                      : null,
                ),
                const SizedBox(height: 18),
                Text(
                  item.title,
                  style: const TextStyle(
                    fontFamily: 'SFProDisplay',
                    color: ThemeColors.kHotSalesTextColor,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 6),
                Text(
                  item.subtitle,
                  style: const TextStyle(
                    fontFamily: 'SFProDisplay',
                    color: ThemeColors.kHotSalesTextColor,
                    fontSize: 11,
                  ),
                ),
                const SizedBox(height: 25),
                CarouselBuyButton(item: item),
              ],
            ),
          ),
        )
      ]),
    );
  }
}
