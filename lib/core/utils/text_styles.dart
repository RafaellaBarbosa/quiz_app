import 'package:flutter/material.dart';
import 'package:quiz_app/core/utils/colors.dart';

// - xs: 12
// - sm: 14
// - md: 16
// - large: 18
// - xl: 20
// - title: 22

// - Regular: 400
// - Medium: 500
// - Semibold: 600
// - Bold: 700

class TextStyles {
  static const String fontFamily = 'General Sans';

  static TextStyle headline1(Color? color) => TextStyle(
        fontFamily: fontFamily,
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: color ?? AppColors.deepCharcoal,
      );

  static TextStyle titleSemibold({Color? color}) => TextStyle(
        fontFamily: fontFamily,
        fontSize: 22,
        fontWeight: FontWeight.w600,
        color: color ?? AppColors.deepCharcoal,
      );

  static TextStyle headline2(Color? color) => TextStyle(
        fontFamily: fontFamily,
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: color ?? AppColors.deepCharcoal,
      );

  static TextStyle largeSemibold({Color? color}) => TextStyle(
        fontFamily: fontFamily,
        fontSize: 18,
        fontWeight: FontWeight.w600,
        color: color ?? AppColors.deepCharcoal,
      );

  static TextStyle mediumSemibold({Color? color}) => TextStyle(
        fontFamily: fontFamily,
        fontSize: 16,
        fontWeight: FontWeight.w600,
        color: color ?? AppColors.deepCharcoal,
      );

  static TextStyle buttonText(Color? color) => TextStyle(
        fontFamily: fontFamily,
        fontSize: 16,
        fontWeight: FontWeight.bold,
        color: color ?? AppColors.deepCharcoal,
      );

  static TextStyle smallSemibold({Color? color}) => TextStyle(
        fontFamily: fontFamily,
        fontSize: 14,
        fontWeight: FontWeight.w600,
        color: color ?? AppColors.deepCharcoal,
      );
}
