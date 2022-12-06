import 'package:ecommerce/ui/screens/cart_screen.dart';
import 'package:ecommerce/ui/screens/main_screen.dart';
import 'package:ecommerce/ui/screens/product_screen.dart';
import 'package:ecommerce/ui/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
    ),
  );

  runApp(const EcommerceApp());
}

class EcommerceApp extends StatelessWidget {
  const EcommerceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ecommerce',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light().copyWith(
        colorScheme: ColorScheme.fromSwatch().copyWith(
          secondary: ThemeColors.kAccentColor,
        ),
        textTheme: ThemeData.light().textTheme.apply(
              fontFamily: 'MarkPro',
            ),
        primaryTextTheme: ThemeData.light().textTheme.apply(
              fontFamily: 'MarkPro',
            ),
      ),
      home: const MainScreen(),
    );
  }
}
