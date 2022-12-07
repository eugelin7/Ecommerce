import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce/data/mock/hot_sales_items.dart';
import 'package:ecommerce/ui/widgets/main_screen/carousel_item.dart';
import 'package:ecommerce/ui/widgets/main_screen/section_title.dart';
import 'package:flutter/material.dart';

class HotSalesSection extends StatelessWidget {
  const HotSalesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SectionTitle(title: 'Hot Sales', actionTitle: 'see more'),
        const SizedBox(height: 6),
        CarouselSlider(
          //carouselController: _controller,
          options: CarouselOptions(
            height: 183,
            initialPage: 0,
            viewportFraction: 1.0,
          ),
          items: kHotSalesItems.map((item) => CarouselItem(item: item)).toList(),
        ),
      ],
    );
  }
}
