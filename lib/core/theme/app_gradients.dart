import 'package:flutter/painting.dart';

import 'app_colors.dart';

/// Gradients for button faces, panels and the sky background.
abstract final class AppGradients {
  static const LinearGradient sky = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [AppColors.skyTop, AppColors.skyMid, AppColors.skyBottom],
    stops: [0.0, 0.55, 1.0],
  );

  static const LinearGradient greenFace = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [AppColors.greenLight, AppColors.green],
  );

  static const LinearGradient blueFace = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [AppColors.blueLight, AppColors.blue],
  );

  static const LinearGradient redFace = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [AppColors.redLight, AppColors.red],
  );

  static const LinearGradient goldFace = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [AppColors.goldLight, AppColors.gold],
  );

  /// Light panel face (cream / grey).
  static const LinearGradient lightFace = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [AppColors.white, AppColors.cream],
  );

  static const LinearGradient greyFace = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [AppColors.white, AppColors.panelGrey],
  );

  static const LinearGradient darkFace = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [AppColors.navyLight, AppColors.navy],
  );

  static const LinearGradient disabledFace = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [AppColors.panelGrey, AppColors.cellGrey],
  );

  /// Glossy top highlight, painted on the upper half of a face.
  static const LinearGradient gloss = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [AppColors.glossTop, AppColors.glossBottom],
  );

  static const LinearGradient goldCoin = RadialGradient(
    center: Alignment(-0.3, -0.4),
    radius: 0.9,
    colors: [AppColors.goldLight, AppColors.gold, AppColors.goldLip],
    stops: [0.0, 0.6, 1.0],
  );

  static const LinearGradient heartFace = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [AppColors.redLight, AppColors.red],
  );
}
