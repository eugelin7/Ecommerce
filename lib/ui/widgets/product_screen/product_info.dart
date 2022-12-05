import 'package:contained_tab_bar_view/contained_tab_bar_view.dart';
import 'package:ecommerce/=models=/product.dart';
import 'package:ecommerce/ui/theme.dart';
import 'package:ecommerce/ui/widgets/product_screen/product_info_shop.dart';
import 'package:ecommerce/ui/widgets/rounded_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ProductInfo extends StatelessWidget {
  final Product product;

  const ProductInfo({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      decoration: BoxDecoration(
        color: ThemeColors.kSectionItemBackColor,
        borderRadius: const BorderRadius.all(
          Radius.circular(30),
        ),
        boxShadow: [kDefaultBoxShadowHeavy],
      ),
      padding: const EdgeInsets.symmetric(horizontal: kBottomSheetPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(width: double.infinity, height: 22),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                product.title,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                    color: ThemeColors.kPrimaryTextColor,
                    fontSize: 24,
                    fontWeight: FontWeight.w500),
              ),
              RoundedIconButton(
                color: ThemeColors.kPrimaryTextColor,
                svgIconName: 'heart',
                iconColor: ThemeColors.kNavBarItemColor,
                iconSize: 13,
                onTap: () {},
              )
            ],
          ),
          Transform.translate(
            offset: const Offset(0, -4),
            child: RatingBarIndicator(
                rating: product.rating,
                itemBuilder: (context, index) => const Icon(Icons.star_rate, color: Colors.amber),
                itemCount: 5,
                itemSize: 20.0,
                itemPadding: const EdgeInsets.only(right: 7.0)),
          ),
          const SizedBox(height: 30),
          SizedBox(
            height: 230,
            child: ContainedTabBarView(
              tabs: const [
                Text('Shop'),
                Text('Details'),
                Text('Features'),
              ],
              tabBarProperties: TabBarProperties(
                height: 32.0,
                indicatorColor: ThemeColors.kAccentColor,
                indicatorWeight: 3,
                labelColor: ThemeColors.kPrimaryTextColor,
                labelStyle: const TextStyle(
                    fontFamily: 'MarkPro', fontSize: 20, fontWeight: FontWeight.bold),
                unselectedLabelColor: ThemeColors.kPrimaryTextColor.withOpacity(0.5),
                unselectedLabelStyle: const TextStyle(
                    fontFamily: 'MarkPro', fontSize: 20, fontWeight: FontWeight.normal),
              ),
              views: [
                Container(
                  color: Colors.yellow.withOpacity(0.1),
                  child: ProductInfoShop(product: product),
                ),
                const Center(child: Text('Details...', style: TextStyle(color: Colors.black26))),
                const Center(child: Text('Features...', style: TextStyle(color: Colors.black26))),
              ],
              onChange: (index) {},
            ),
          ),
        ],
      ),
    );
  }
}
