import 'package:flutter/material.dart';

class AppColors {
  static const int _yellowPrimaryValue = 0xFFF9B31A;
  static const MaterialColor primaryColor = MaterialColor(
    _yellowPrimaryValue,
    <int, Color>{
      50: Color(0xFFfcd98c),
      100: Color(0xFFfbd175),
      200: Color(0xFFfac95e),
      300: Color(0xFFfac247),
      400: Color(0xFFf9ba30),
      500: Color(_yellowPrimaryValue),
      600: Color(0xFFe0a117),
      700: Color(0xFFc78f14),
      800: Color(0xFFae7d12),
      900: Color(0xFF956b0f),
    },
  );

  static Color white = Colors.white;
  static Color black = Colors.black;
  static Color transparent = Colors.transparent;

  static Color textDark = const Color(0xFF222222);
  static Color textLight = const Color(0xFF8B8B8B);
  static Color textLightest = const Color(0xFFB1B1B1);

  static Color success = const Color(0xFF248820);
  static Color failure = const Color(0xFF9D2828);

  static Color primary = const Color(0xFFF73565);
  static Color secondary = const Color.fromARGB(255, 13, 24, 53);
  static Color secondaryLight = const Color.fromARGB(255, 33, 57, 122);
  static Color secondaryDark = const Color(0xFF030715);
  static Color blueLightest = const Color(0xFFE0EAFC);
  static Color blueWhite = const Color(0xFFEFF3FB);
  static Color blueWhite_ = const Color(0xFFE1EAFF);
  static Color background = const Color(0xFFEFEFEF);
  static Color grey = const Color(0xFFAFAFAF);
  static Color greyLightest = const Color(0xFFE8E8E8);
  static Color redLightest = const Color(0xFFFFF6F6);
  static Color greenLightest = const Color(0xFFB5DBD3);
  static Color shadowColor = const Color(0xFFCBCBCB);

  //This Is My Colors
  static const greenLight = Color(0xFFA1FFDD);
  static const green = Color(0xFF01A76B);
  static const blueLight = Color(0xFFA1D2FF);
  static const blueDark = Color(0xFF2B478B);
  static const teal = Color(0xFF06AFB0);
  static const red = Color(0xFFDA0000);
  static const blueGrey = Color(0xFF007EA7);
  static const tealGrey = Color(0xFF00AF9A);
  static const greyDark = Color(0xFF595959);
  static const yellowLight = Color(0xFFFFF1DC);
  static const orange = Color(0xFFEF802B);
//---------------------
}
