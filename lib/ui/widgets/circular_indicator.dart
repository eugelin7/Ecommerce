import 'package:ecommerce/ui/theme.dart';
import 'package:flutter/material.dart';

class CircularIndicator extends StatelessWidget {
  const CircularIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return CircularProgressIndicator(
      backgroundColor: ThemeColors.kAccentColor.withOpacity(0.15),
      valueColor: AlwaysStoppedAnimation<Color>(
        ThemeColors.kAccentColor.withOpacity(0.7),
      ),
    );
  }
}
