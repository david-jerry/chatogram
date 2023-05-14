import 'package:chatogram/theme/colors.dart';
import 'package:chatogram/theme/size.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextThemes {
  // light text theme colors
  static TextTheme chatogramTextTheme = TextTheme(
    displayLarge: GoogleFonts.urbanist(
      fontSize: AppSizes.p32,
      fontWeight: FontWeight.w700,
      color: AppColors.blackColor,
    ),
    displayMedium: GoogleFonts.urbanist(
      fontSize: AppSizes.p16,
      fontWeight: FontWeight.w600,
      color: AppColors.blackColor,
    ),
    displaySmall: GoogleFonts.urbanist(
      fontSize: AppSizes.p14,
      fontWeight: FontWeight.w400,
      color: AppColors.blackColor,
    ),
    bodyMedium: GoogleFonts.urbanist(
      fontSize: AppSizes.p14,
      fontWeight: FontWeight.w500,
      color: AppColors.blackColor,
    ),
    bodySmall: GoogleFonts.urbanist(
      fontSize: AppSizes.p12,
      fontWeight: FontWeight.w400,
      color: AppColors.blackColor,
    ),
    titleMedium: GoogleFonts.urbanist(
      fontSize: AppSizes.p16,
      fontWeight: FontWeight.w600,
      color: AppColors.blackColor,
    ),
    titleSmall: GoogleFonts.urbanist(
      fontSize: AppSizes.p14,
      fontWeight: FontWeight.w500,
      color: AppColors.blackColor,
    ),
  );
}
