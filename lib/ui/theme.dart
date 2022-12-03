import 'package:flutter/material.dart';

abstract class ThemeColors {
  static const kPrimaryTextColor = Color(0xFF010035);
  static const kNavBarItemColor = Colors.white;
  static const kAccentColor = Color(0xFFFF6E4E);
  static const kSectionItemBackColor = Colors.white;
  static const kSectionItemIconColor = Color(0xFFB3B3C3);
}

const kSearchFieldBorderRadius = 30.0;
const kSearchFieldFillColor = Colors.white;
const kSearchFieldHintColor = Color(0x80010035);

const kTextFieldDecoration = InputDecoration(
  hintText: 'Search',
  hintStyle: TextStyle(
    color: kSearchFieldHintColor,
    fontWeight: FontWeight.normal,
    fontSize: 12,
  ),
  isDense: true,
  contentPadding: EdgeInsets.symmetric(vertical: 9, horizontal: 12),
  filled: true,
  fillColor: kSearchFieldFillColor,
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
