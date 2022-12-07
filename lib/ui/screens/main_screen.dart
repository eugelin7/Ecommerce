import 'package:ecommerce/ui/theme.dart';
import 'package:ecommerce/ui/widgets/main_screen/best_sellers_section.dart';
import 'package:ecommerce/ui/widgets/main_screen/bottom_nav_panel.dart';
import 'package:ecommerce/ui/widgets/main_screen/categories_section.dart';
import 'package:ecommerce/ui/widgets/main_screen/hot_sales_section.dart';
import 'package:ecommerce/ui/widgets/main_screen/main_top_row.dart';
import 'package:ecommerce/ui/widgets/main_screen/search_section.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  static const name = 'main_screen';
  static const path = '/';

  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Container(
              color: ThemeColors.kBackgroundColor,
              child: Column(
                children: const [
                  SizedBox(width: double.infinity, height: 42),
                  MainTopRow(),
                  SizedBox(height: 20),
                  CategoriesSection(),
                  SizedBox(height: 23),
                  SearchSection(),
                  SizedBox(height: 23),
                  HotSalesSection(),
                  SizedBox(height: 23),
                  //Expanded(
                  //  child:
                  SizedBox(
                    height: 400,
                    child: BestSellersSection(),
                  ),
                  //),
                  SizedBox(height: 72),
                ],
              ),
            ),
          ),
          const Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: BottomNavPanel(),
          )
        ],
      ),
    );
  }
}
