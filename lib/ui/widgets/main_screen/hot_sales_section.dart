import 'package:ecommerce/ui/widgets/main_screen/hot_sales_slider.dart';
import 'package:ecommerce/ui/widgets/main_screen/section_title.dart';
import 'package:flutter/material.dart';

class HotSalesSection extends StatelessWidget {
  const HotSalesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        SectionTitle(title: 'Hot Sales', actionTitle: 'see more'),
        SizedBox(height: 6),
        HotSalesSlider(),
      ],
    );
  }
}
