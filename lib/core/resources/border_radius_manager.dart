import 'package:flutter/material.dart';

/// -------------------------------
/// BORDER RADIUS VALUE MANAGER
/// -------------------------------
class RadiusValueManager {
  static const double vBR10 = 10;
  static const double vBR15 = 15;
  static const double vBR20 = 20;
  static const double vBR27 = 27;
  static const double vBR35 = 35;
  static const double vBR45 = 45;
}

/// -------------------------------
/// BORDER RADIUS MANAGER
/// -------------------------------
class BorderRadiusManager {
  static final BorderRadius vBR10 =
      BorderRadius.circular(RadiusValueManager.vBR10);

  static final BorderRadius vBR15 =
      BorderRadius.circular(RadiusValueManager.vBR15);

  static final BorderRadius vBR20 =
      BorderRadius.circular(RadiusValueManager.vBR20);

  static final BorderRadius vBR27 =
      BorderRadius.circular(RadiusValueManager.vBR27);

  static final BorderRadius vBR35 =
      BorderRadius.circular(RadiusValueManager.vBR35);

  static final BorderRadius vBR45 =
      BorderRadius.circular(RadiusValueManager.vBR45);
}
