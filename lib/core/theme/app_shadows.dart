import 'package:flutter/painting.dart';

import 'app_colors.dart';

/// Shadow tokens: drop shadows, the chunky button lip and soft glows.
abstract final class AppShadows {
  /// Height of the solid "lip" under a chunky button.
  static const double lipHeight = 6;

  /// How far the face sinks when pressed.
  static const double pressDepth = 4;

  static const List<BoxShadow> soft = [
    BoxShadow(
      color: AppColors.shadowSoft,
      blurRadius: 16,
      offset: Offset(0, 6),
    ),
  ];

  static const List<BoxShadow> panel = [
    BoxShadow(
      color: AppColors.shadowMedium,
      blurRadius: 24,
      offset: Offset(0, 12),
    ),
  ];

  static const List<BoxShadow> dialog = [
    BoxShadow(
      color: AppColors.shadowStrong,
      blurRadius: 40,
      offset: Offset(0, 20),
    ),
  ];

  /// Solid offset shadow used to fake the 3D lip of a button.
  static List<BoxShadow> lip(Color lipColor) => [
        BoxShadow(
          color: lipColor,
          offset: const Offset(0, lipHeight),
          blurRadius: 0,
        ),
      ];

  /// Inner top highlight for panels — emulated with a bright inset border.
  static const Border innerHighlight = Border(
    top: BorderSide(color: Color(0xB3FFFFFF), width: 2),
    left: BorderSide(color: Color(0x66FFFFFF), width: 2),
    right: BorderSide(color: Color(0x66FFFFFF), width: 2),
    bottom: BorderSide(color: Color(0x00FFFFFF), width: 2),
  );
}
