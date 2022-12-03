import 'package:ecommerce/ui/screens/main_screen.dart';
import 'package:ecommerce/ui/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ecommerce',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light().copyWith(
        colorScheme: ColorScheme.fromSwatch().copyWith(
          secondary: ThemeColors.kAccentColor,
        ),
        textTheme: ThemeData.dark().textTheme.apply(
              fontFamily: 'MarkPro',
            ),
        primaryTextTheme: ThemeData.dark().textTheme.apply(
              fontFamily: 'MarkPro',
            ),
      ),
      home: const MainScreen(),
    );
  }
}
