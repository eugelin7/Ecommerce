import 'package:ecommerce/ui/theme.dart';
import 'package:flutter/material.dart';

class SectionTitle extends StatelessWidget {
  final String title, actionTitle;

  const SectionTitle({super.key, required this.title, required this.actionTitle});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kContentPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title,
              style: const TextStyle(
                color: ThemeColors.kPrimaryTextColor,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              )),
          Text(actionTitle,
              style: const TextStyle(
                color: ThemeColors.kAccentColor,
                fontSize: 15,
              )),
        ],
      ),
    );
  }
}
