import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_colors.dart';

// Text Style
appDarkTextStyle(double size, FontWeight fontWeight) {
  return GoogleFonts.poppins(
      color: AppColors.textDark, fontSize: size, fontWeight: fontWeight);
}

appLightTextStyle(double size, FontWeight fontWeight, {Color? textColor}) {
  return GoogleFonts.poppins(
      color: textColor ?? AppColors.textLight,
      fontSize: size,
      fontWeight: fontWeight);
}
appWhiteTextStyle(double size, FontWeight fontWeight, {Color? textColor}) {
  return GoogleFonts.poppins(
      color: textColor ?? AppColors.white,
      fontSize: size,
      fontWeight: fontWeight);
}

//--------------------------

// Border Radius

appBorRadius8() {
  return BorderRadius.circular(8);
}

appBorRadius10() {
  return BorderRadius.circular(10);
}
