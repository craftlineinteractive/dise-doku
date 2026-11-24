import 'dart:math' as math;

import 'package:flutter/widgets.dart';

import '../../core/theme/app_colors.dart';
import '../../core/theme/app_gradients.dart';

/// A chunky rounded die with pips. Reused by the background silhouettes and
/// the dev gallery; real dice art lives in the game layer.
class DiceShape extends StatelessWidget {
  const DiceShape({
    super.key,
    this.size = 48,
    this.value = 6,
    this.rotation = 0,
    this.silhouette = false,
  });

  final double size;
  final int value;
  final double rotation;

  /// When true the die is painted as a flat translucent shape (background use).
  final bool silhouette;

  @override
  Widget build(BuildContext context) {
    return RepaintBoundary(
      child: Transform.rotate(
        angle: rotation,
        child: SizedBox.square(
          dimension: size,
          child: CustomPaint(
            painter: DicePainter(value: value, silhouette: silhouette),
          ),
        ),
      ),
    );
  }
}

class DicePainter extends CustomPainter {
  const DicePainter({required this.value, this.silhouette = false});

  final int value;
  final bool silhouette;

  static const Map<int, List<(double, double)>> _pips = {
    1: [(0.5, 0.5)],
    2: [(0.28, 0.28), (0.72, 0.72)],
    3: [(0.26, 0.26), (0.5, 0.5), (0.74, 0.74)],
    4: [(0.28, 0.28), (0.72, 0.28), (0.28, 0.72), (0.72, 0.72)],
    5: [
      (0.27, 0.27),
      (0.73, 0.27),
      (0.5, 0.5),
      (0.27, 0.73),
      (0.73, 0.73),
    ],
    6: [
      (0.28, 0.24),
      (0.72, 0.24),
      (0.28, 0.5),
      (0.72, 0.5),
      (0.28, 0.76),
      (0.72, 0.76),
    ],
  };

  @override
  void paint(Canvas canvas, Size size) {
    final s = size.shortestSide;
    final radius = Radius.circular(s * 0.22);
    final body = RRect.fromRectAndRadius(
      Rect.fromLTWH(s * 0.04, s * 0.04, s * 0.92, s * 0.92),
      radius,
    );

    if (silhouette) {
      canvas.drawRRect(body, Paint()..color = AppColors.white.withValues(alpha: 0.5));
      return;
    }

    canvas.drawRRect(
      body.shift(Offset(0, s * 0.05)),
      Paint()..color = AppColors.shadowMedium,
    );
    canvas.drawRRect(
      body,
      Paint()
        ..shader = AppGradients.lightFace.createShader(Offset.zero & size),
    );
    canvas.drawRRect(
      body,
      Paint()
        ..style = PaintingStyle.stroke
        ..strokeWidth = s * 0.055
        ..color = AppColors.cellGrey,
    );

    final pipPaint = Paint()..color = AppColors.navy;
    final pips = _pips[value.clamp(1, 6)] ?? _pips[1]!;
    for (final (x, y) in pips) {
      canvas.drawCircle(
        Offset(s * x, s * y),
        s * 0.075,
        pipPaint,
      );
    }
  }

  @override
  bool shouldRepaint(DicePainter old) =>
      old.value != value || old.silhouette != silhouette;
}

double diceAngle(int seed) => (seed % 7) * math.pi / 36;
