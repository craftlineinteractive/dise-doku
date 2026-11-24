import 'package:flutter/painting.dart';

import '../constants/app_assets.dart';
import 'app_colors.dart';

/// Typography tokens.
///
/// Lilita One carries every "game" voice: titles, big numbers, button labels.
/// Fredoka (bundled 400/500/600/700) carries body copy and small labels.
/// Sizes are chosen so a 1.3x system text scale still fits the kit's layouts.
abstract final class AppTextStyles {
  static final String _display = AppAssets.fonts.lilitaOne;
  static final String _body = AppAssets.fonts.fredoka;

  static final TextStyle titleGiant = TextStyle(
    fontFamily: _display,
    fontSize: 40,
    height: 1.1,
    color: AppColors.textLight,
    letterSpacing: 0.5,
  );

  static final TextStyle titleLarge = TextStyle(
    fontFamily: _display,
    fontSize: 28,
    height: 1.15,
    color: AppColors.textLight,
    letterSpacing: 0.4,
  );

  static final TextStyle title = TextStyle(
    fontFamily: _display,
    fontSize: 22,
    height: 1.2,
    color: AppColors.textDark,
    letterSpacing: 0.3,
  );

  static final TextStyle sectionTitle = TextStyle(
    fontFamily: _display,
    fontSize: 18,
    height: 1.2,
    color: AppColors.textDark,
    letterSpacing: 0.6,
  );

  static final TextStyle buttonLarge = TextStyle(
    fontFamily: _display,
    fontSize: 22,
    height: 1.1,
    color: AppColors.textLight,
    letterSpacing: 0.6,
  );

  static final TextStyle buttonMedium = TextStyle(
    fontFamily: _display,
    fontSize: 19,
    height: 1.1,
    color: AppColors.textLight,
    letterSpacing: 0.5,
  );

  static final TextStyle buttonSmall = TextStyle(
    fontFamily: _display,
    fontSize: 16,
    height: 1.1,
    color: AppColors.textLight,
    letterSpacing: 0.4,
  );

  static final TextStyle number = TextStyle(
    fontFamily: _display,
    fontSize: 30,
    height: 1.0,
    color: AppColors.textLight,
    letterSpacing: 0.5,
  );

  static final TextStyle numberSmall = TextStyle(
    fontFamily: _display,
    fontSize: 18,
    height: 1.0,
    color: AppColors.textLight,
    letterSpacing: 0.3,
  );

  static final TextStyle body = TextStyle(
    fontFamily: _body,
    fontSize: 16,
    height: 1.35,
    fontWeight: FontWeight.w500,
    color: AppColors.textDark,
  );

  static final TextStyle bodySmall = TextStyle(
    fontFamily: _body,
    fontSize: 14,
    height: 1.35,
    fontWeight: FontWeight.w500,
    color: AppColors.textDark,
  );

  static final TextStyle caption = TextStyle(
    fontFamily: _body,
    fontSize: 12,
    height: 1.2,
    fontWeight: FontWeight.w600,
    color: AppColors.textDark,
  );

  static final TextStyle pillLabel = TextStyle(
    fontFamily: _body,
    fontSize: 13,
    height: 1.1,
    fontWeight: FontWeight.w700,
    color: AppColors.textLight,
    letterSpacing: 0.2,
  );
}
