import 'dart:ui' show Color;

/// DiceDoku palette. Every colour used in the UI kit comes from here.
abstract final class AppColors {
  // ---- Base surfaces -------------------------------------------------------
  static const Color navy = Color(0xFF141B34);
  static const Color navyLight = Color(0xFF1F2A4D);

  // ---- Sky / background ----------------------------------------------------
  static const Color skyTop = Color(0xFFCFF4F0);
  static const Color skyMid = Color(0xFFDCEBFF);
  static const Color skyBottom = Color(0xFFEAE0FF);

  // ---- Accents -------------------------------------------------------------
  static const Color green = Color(0xFF1E9E5A);
  static const Color greenLip = Color(0xFF137A43);
  static const Color greenLight = Color(0xFF3FCB84);

  static const Color red = Color(0xFFE04436);
  static const Color redLip = Color(0xFFB3291E);
  static const Color redLight = Color(0xFFF2705F);

  static const Color blue = Color(0xFF2F7BFF);
  static const Color blueLip = Color(0xFF1D58C4);
  static const Color blueLight = Color(0xFF5E9DFF);

  static const Color gold = Color(0xFFFFC83D);
  static const Color goldLip = Color(0xFFD99A12);
  static const Color goldLight = Color(0xFFFFE07A);

  // ---- Neutrals ------------------------------------------------------------
  static const Color cream = Color(0xFFFFFCF3);
  static const Color cellGrey = Color(0xFFD5DAE3);
  static const Color panelGrey = Color(0xFFE7EBF2);
  static const Color textDark = Color(0xFF141B34);
  static const Color textLight = Color(0xFFFFFFFF);
  static const Color disabled = Color(0xFFB7BFCC);

  // ---- Fixed opacity helpers (const so they stay cheap) --------------------
  static const Color white = Color(0xFFFFFFFF);
  static const Color transparent = Color(0x00000000);
  static const Color glossTop = Color(0x8CFFFFFF);
  static const Color glossBottom = Color(0x00FFFFFF);

  static const Color shadowSoft = Color(0x1F141B34);
  static const Color shadowMedium = Color(0x33141B34);
  static const Color shadowStrong = Color(0x4D141B34);

  static const Color barrier = Color(0x99141B34);
  static const Color whiteStroked = Color(0xFFFFF6E0);
}
