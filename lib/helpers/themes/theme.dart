import 'package:flutter/material.dart';
import 'package:nhtelwebsite/helpers/style.dart';

final _primaryColor = primaryColor;
final _highlightColor = secondaryColor;
final _cardColor = primaryColor;
const _backgroundColor = Color(0xFFD6DFE4);
const _bodyTextColor = Color(0xFFFFFFFF);
const _strokeColor = Color(0xFF000000);

final theme = ThemeData(
  brightness: Brightness.light,
  primaryColor: _primaryColor,
  highlightColor: _highlightColor,
  cardColor: _cardColor,
  cardTheme: CardTheme(
    color: _cardColor,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(30.00),
    ),
  ),
  iconTheme: const IconThemeData(color: _bodyTextColor),
  backgroundColor: _backgroundColor,
  scaffoldBackgroundColor: _backgroundColor,
  textTheme: const TextTheme(
    headline3: TextStyle(
      fontSize: 48,
      fontWeight: FontWeight.w700,
      fontFamily: 'Inter',
      color: _bodyTextColor,
    ),
    headline4: TextStyle(
      fontSize: 25,
      fontWeight: FontWeight.w700,
      fontFamily: 'Inter',
      color: _bodyTextColor,
    ),
    headline5: TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.w700,
      fontFamily: 'Inter',
      color: _bodyTextColor,
    ),
    headline6: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w700,
      fontFamily: 'Inter',
    ),
    subtitle1: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w700,
      fontFamily: 'Inter',
      color: _bodyTextColor,
    ),
    subtitle2: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w700,
      fontFamily: 'Inter',
      color: _bodyTextColor,
    ),
    caption: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w700,
      fontFamily: 'Inter',
      color: _bodyTextColor,
    ),
  ),
);
