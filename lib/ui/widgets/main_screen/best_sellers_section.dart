import 'package:ecommerce/data/best_seller_items.dart';
import 'package:ecommerce/ui/theme.dart';
import 'package:ecommerce/ui/widgets/main_screen/best_seller_grid_item.dart';
import 'package:ecommerce/ui/widgets/main_screen/section_title.dart';
import 'package:flutter/material.dart';

class BestSellersSection extends StatelessWidget {
  const BestSellersSection({super.key});

  @override
  Widget build(BuildContext context) {
    const kGridOuterPadding = kContentPadding + 1;
    const kGridInnerPadding = kContentPadding - 2;
    const leftColumnItemMargins =
        EdgeInsets.fromLTRB(kGridOuterPadding, 6, kGridInnerPadding / 2, kGridInnerPadding - 6);
    const rightColumnItemMargins =
        EdgeInsets.fromLTRB(kGridInnerPadding / 2, 6, kGridOuterPadding, kGridInnerPadding - 6);

    return Column(
      children: [
        const SectionTitle(title: 'Best Seller', actionTitle: 'see more'),
        Expanded(
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 0.836,
              crossAxisSpacing: 0,
              mainAxisSpacing: 0,
            ),
            shrinkWrap: true,
            padding: EdgeInsets.zero,
            itemCount: kBestSellersItems.length,
            itemBuilder: (context, index) {
              return BestSellerGridItem(
                item: kBestSellersItems[index],
                margin: (index % 2 == 0) ? leftColumnItemMargins : rightColumnItemMargins,
              );
            },
          ),
        ),
      ],
    );
  }
}
