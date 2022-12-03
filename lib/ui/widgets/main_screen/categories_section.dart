import 'package:ecommerce/data/categories.dart';
import 'package:ecommerce/ui/theme.dart';
import 'package:ecommerce/ui/widgets/main_screen/category_item.dart';
import 'package:ecommerce/ui/widgets/main_screen/section_title.dart';
import 'package:flutter/material.dart';

class CategoriesSection extends StatefulWidget {
  const CategoriesSection({super.key});

  @override
  State<CategoriesSection> createState() => _CategoriesSectionState();
}

class _CategoriesSectionState extends State<CategoriesSection> {
  int _selectedIndex = 0;

  void _handleTap(int id) {
    int newSelIndex = kCategories.indexWhere((item) => item.id == id);
    if (_selectedIndex != newSelIndex) {
      setState(() {
        _selectedIndex = newSelIndex;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SectionTitle(title: 'Select Category', actionTitle: 'view all'),
        const SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.only(left: kContentPadding),
          child: Container(
            width: double.infinity,
            height: 110,
            color: Colors.transparent,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: kCategories.length,
              itemBuilder: (_, index) => CategoryItem(
                item: kCategories[index],
                isSelected: index == _selectedIndex,
                onTapCallback: _handleTap,
              ),
            ),
          ),
        )
      ],
    );
  }
}
