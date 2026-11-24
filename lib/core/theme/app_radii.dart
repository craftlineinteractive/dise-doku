import 'package:flutter/painting.dart';

/// Corner radii. Nothing in the UI hard-codes a radius.
abstract final class AppRadii {
  static const double button = 20;
  static const double panel = 28;
  static const double dialog = 32;
  static const double pill = 999;
  static const double cell = 16;
  static const double iconButton = 18;
  static const double badge = 999;
  static const double tray = 24;

  static const BorderRadius buttonAll = BorderRadius.all(Radius.circular(button));
  static const BorderRadius panelAll = BorderRadius.all(Radius.circular(panel));
  static const BorderRadius dialogAll =
      BorderRadius.all(Radius.circular(dialog));
  static const BorderRadius cellAll = BorderRadius.all(Radius.circular(cell));
  static const BorderRadius iconButtonAll =
      BorderRadius.all(Radius.circular(iconButton));
  static const BorderRadius pillAll = BorderRadius.all(Radius.circular(pill));
  static const BorderRadius trayAll = BorderRadius.all(Radius.circular(tray));
  static const BorderRadius badgeAll = BorderRadius.all(Radius.circular(badge));
}
