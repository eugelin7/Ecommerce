import 'package:ecommerce/=models=/best_seller_item.dart';
import 'package:ecommerce/ui/theme.dart';
import 'package:ecommerce/ui/widgets/main_screen/best_seller_fav_button.dart';
import 'package:ecommerce/ui/widgets/main_screen/best_seller_grid_image.dart';
import 'package:flutter/material.dart';

class BestSellerGridItem extends StatelessWidget {
  final BestSellerItem item;
  final EdgeInsets margin;

  const BestSellerGridItem({super.key, required this.margin, required this.item});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: margin,
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(
            color: ThemeColors.kSectionItemBackColor,
            borderRadius: const BorderRadius.all(Radius.circular(kCarouselItemBorderRadius)),
            boxShadow: [kDefaultBoxShadowWeak],
          ),
          child: Column(
            children: [
              Expanded(
                child: BestSellerGridImage(
                  imagePath: item.picture,
                ),
              ),
              Container(
                height: 60,
                //color: Colors.green,
                padding: const EdgeInsets.only(left: 19),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(width: double.infinity, height: 7.5),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          formatPrice(item.priceWithoutDiscount),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            color: ThemeColors.kPrimaryTextColor,
                            fontSize: 16.5,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(width: 8),
                        Expanded(
                          child: Transform.translate(
                            offset: const Offset(0, -1),
                            child: Text(
                              formatPrice(item.discountPrice),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(
                                color: ThemeColors.kBestSellerOldPriceColor,
                                fontSize: 10.5,
                                fontWeight: FontWeight.w500,
                                decoration: TextDecoration.lineThrough,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 4),
                    Text(
                      item.title,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        color: ThemeColors.kPrimaryTextColor,
                        fontSize: 10,
                        letterSpacing: -0.3,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Positioned(
          top: 17,
          right: 12 + margin.right,
          child: BestSellerFavButton(item: item),
        ),
      ],
    );
  }
}
