import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_colors.dart';

class AppTextStyles {
  static final TextStyle appTitle = GoogleFonts.roboto(
      color: AppColors.darkBlue, fontSize: 30, fontWeight: FontWeight.w300);

  static final TextStyle titleThin = GoogleFonts.roboto(
      color: AppColors.textLight, fontSize: 20, fontWeight: FontWeight.w100);

  static final TextStyle cardMoney = GoogleFonts.roboto(
      color: AppColors.darkBlue, fontSize: 25, fontWeight: FontWeight.bold);

  static final TextStyle cardMoneySymbol = GoogleFonts.roboto(
      color: AppColors.darkBlue, fontSize: 16, fontWeight: FontWeight.w500);

  static final TextStyle cardDescription = GoogleFonts.roboto(
      color: AppColors.textLight, fontSize: 16, fontWeight: FontWeight.w100);

  static final TextStyle cardCustoMesTitle = GoogleFonts.roboto(
      color: AppColors.darkBlue, fontSize: 16, fontWeight: FontWeight.bold);

  static final TextStyle cardCustoMesValue = GoogleFonts.roboto(fontSize: 18);

  static final TextStyle cardCartaoValue = GoogleFonts.roboto(fontSize: 14);

  static final TextStyle cardCartaoDescription = GoogleFonts.roboto(
      color: AppColors.textLight, fontSize: 14, fontWeight: FontWeight.w100);
}
