import 'package:ecommerce/ui/widgets/main_screen/best_sellers_grid.dart';
import 'package:ecommerce/ui/widgets/main_screen/section_title.dart';
import 'package:flutter/material.dart';

class BestSellersSection extends StatelessWidget {
  const BestSellersSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        SectionTitle(title: 'Best Seller', actionTitle: 'see more'),
        Expanded(child: BestSellersGrid()),
      ],
    );
  }
}
