import 'package:flutter/animation.dart';

/// Spring-like curves. `pop` and `bounce` overshoot on purpose.
abstract final class AppCurves {
  /// Quick overshoot, great for scale-in pops.
  static const Curve pop = Cubic(0.34, 1.56, 0.64, 1.0);

  /// Stronger overshoot for bouncy movement.
  static const Curve bounce = Cubic(0.18, 1.62, 0.42, 1.0);

  /// Squash on the way down, tiny overshoot on the way up.
  static const Curve squash = Cubic(0.45, 0.0, 0.3, 1.35);

  static const Curve smooth = Curves.easeOutCubic;
  static const Curve settle = Curves.easeOutQuint;

  /// One-shot squash-and-stretch used by the press animation.
  static const Curve pressDown = Curves.easeOutQuart;
}
