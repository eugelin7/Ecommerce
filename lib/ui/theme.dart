import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

abstract class ThemeColors {
  static const kPrimaryTextColor = Color(0xFF010035);
  static const kNavBarItemColor = Colors.white;
  static const kAccentColor = Color(0xFFFF6E4E);
  static const kSectionItemBackColor = Colors.white;
  static const kSectionItemIconColor = Color(0xFFB3B3C3);
  static const kHotSalesTextColor = Colors.white;
  static const kBestSellerOldPriceColor = Color(0xFFCCCCCC);
  static const kErrorIconColor = Color(0xF1DDDDDD);
  static const kSearchFieldFillColor = Colors.white;
  static const kSearchFieldHintColor = Color(0x80010035);
  static const kDropdownBorderColor = Color(0xFFDCDCDC);
  static const kDropdownIconColor = Color(0xFFB3B3B3);
  static const kProductInfoColor = Color(0xFFB7B7B7);
  static const kProductInfoTextColor = Color(0xFF8D8D8D);
}

const kContentPadding = 17.0;

const kSearchFieldBorderRadius = 30.0;

const kTextFieldDecoration = InputDecoration(
  hintText: 'Search',
  hintStyle: TextStyle(
    color: ThemeColors.kSearchFieldHintColor,
    fontWeight: FontWeight.normal,
    fontSize: 12,
  ),
  isDense: true,
  contentPadding: EdgeInsets.symmetric(vertical: 9, horizontal: 12),
  filled: true,
  fillColor: ThemeColors.kSearchFieldFillColor,
  border: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.transparent),
    borderRadius: BorderRadius.all(Radius.circular(kSearchFieldBorderRadius)),
  ),
  errorBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.transparent),
    borderRadius: BorderRadius.all(Radius.circular(kSearchFieldBorderRadius)),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.transparent),
    borderRadius: BorderRadius.all(Radius.circular(kSearchFieldBorderRadius)),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.transparent),
    borderRadius: BorderRadius.all(Radius.circular(kSearchFieldBorderRadius)),
  ),
);

final kDefaultBoxShadow = BoxShadow(
  color: Colors.black.withOpacity(0.08),
  blurRadius: 10,
  spreadRadius: 0,
);

final kDefaultBoxShadowWeak = BoxShadow(
  color: Colors.black.withOpacity(0.05),
  blurRadius: 10,
  spreadRadius: 0,
);

final kDefaultBoxShadowStrong = BoxShadow(
  color: Colors.black.withOpacity(0.12),
  blurRadius: 12,
  spreadRadius: 2,
);

final kDefaultBoxShadowHeavy = BoxShadow(
  color: Colors.black.withOpacity(0.20),
  blurRadius: 12,
  spreadRadius: 2,
);

const kCarouselItemBorderRadius = 10.0;

const kBottomSheetPadding = 30.0;

String formatPrice(double price) {
  return NumberFormat.currency(locale: 'en_US', name: '\$', decimalDigits: 0).format(price);
}

//---
extension HexColor on Color {
  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}

extension InvertedColor on Color {
  Color invertColor() {
    final r = 255 - red;
    final g = 255 - green;
    final b = 255 - blue;
    return Color.fromARGB((opacity * 255).round(), r, g, b);
  }
}
//---
