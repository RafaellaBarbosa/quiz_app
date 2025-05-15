import 'package:flutter/material.dart';

class TextStyles {
  static const String fontFamily = 'General Sans';

  static const TextStyle headline1 = TextStyle(
    fontFamily: fontFamily,
    fontSize: 24,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle headline2 = TextStyle(
    fontFamily: fontFamily,
    fontSize: 20,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle bodyText1 = TextStyle(
    fontFamily: fontFamily,
    fontSize: 16,
  );

  static const TextStyle bodyText2 = TextStyle(
    fontFamily: fontFamily,
    fontSize: 14,
  );

  static const TextStyle buttonText = TextStyle(
    fontFamily: fontFamily,
    fontSize: 16,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );
}
