import 'package:flutter/material.dart';

class ColorValueManager {
  // 🟣 Background Colors
  static const Color vBackgroundColor = Color(0xff211134);

  // ⚪ White Shades
  static const Color vWhiteColor = Colors.white;
  static const Color vWhiteTransparent = Colors.transparent;
  static final Color vWhiteOpec_0_05 = Colors.white.withValues(alpha: 0.05);
  static final Color vWhiteOpec_0_2 = Colors.white.withValues(alpha: 0.2);
  static final Color vWhiteOpec_0_5 = Colors.white.withValues(alpha: 0.5);
  static final Color vWhiteOpec_0_1 = Colors.white.withValues(alpha: 0.1);

  // ⚫ Black Shades
  static const Color vBlackColor = Colors.black;
  static final Color vBlackOpec_0_2 = Colors.black.withValues(alpha: 0.2);

  // 🔵 Indigo / Blue Shades
  static const Color vDarkBlueColor = Colors.indigo;
  static final Color vIndigoOpec_0_2 = Colors.indigo.withValues(alpha: 0.2);
  static final Color vIndigoShadow = Color(0xFF7929C2);

  // ⚙️ Gray Shades
  static const Color vGrayColor = Colors.grey;
  static const Color vGrayColor300 = Color.fromRGBO(224, 224, 224, 1);

  // 🟡 Transparent
  static const Color vTransparent = Colors.transparent;
}
