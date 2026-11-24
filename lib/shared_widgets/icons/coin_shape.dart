import 'package:flutter/widgets.dart';

import '../../core/theme/app_colors.dart';
import '../../core/theme/app_gradients.dart';

/// Gold coin drawn in code: gradient face, inner ring, star mark and shine.
class CoinShape extends StatelessWidget {
  const CoinShape({super.key, this.size = 24});

  final double size;

  @override
  Widget build(BuildContext context) {
    return RepaintBoundary(
      child: SizedBox.square(
        dimension: size,
        child: CustomPaint(painter: const _CoinPainter()),
      ),
    );
  }
}

class _CoinPainter extends CustomPainter {
  const _CoinPainter();

  @override
  void paint(Canvas canvas, Size size) {
    final s = size.shortestSide;
    final center = Offset(s / 2, s / 2);
    final radius = s * 0.46;

    canvas.drawCircle(
      center,
      radius,
      Paint()..color = AppColors.goldLip.withValues(alpha: 0.45),
    );
    canvas.drawCircle(
      center,
      radius * 0.94,
      Paint()..shader = AppGradients.goldCoin.createShader(Offset.zero & size),
    );
    canvas.drawCircle(
      center,
      radius * 0.72,
      Paint()
        ..style = PaintingStyle.stroke
        ..strokeWidth = s * 0.07
        ..color = AppColors.goldLip.withValues(alpha: 0.55),
    );

    // Star mark.
    final star = Path();
    for (var i = 0; i < 10; i++) {
      final r = i.isEven ? s * 0.28 : s * 0.13;
      final angle = -1.5708 + i * 0.628;
      final point = Offset(
        center.dx + r * 0.5 * 1.0 * (1 + 0.0001) * _cos(angle),
        center.dy + r * 0.5 * _sin(angle),
      );
      if (i == 0) {
        star.moveTo(point.dx, point.dy);
      } else {
        star.lineTo(point.dx, point.dy);
      }
    }
    star.close();
    canvas.drawPath(star, Paint()..color = AppColors.goldLip);

    canvas.drawOval(
      Rect.fromCenter(
        center: Offset(s * 0.36, s * 0.3),
        width: s * 0.26,
        height: s * 0.16,
      ),
      Paint()..color = AppColors.white.withValues(alpha: 0.5),
    );
  }

  double _cos(double a) => math.cos(a);
  double _sin(double a) => math.sin(a);

  @override
  bool shouldRepaint(_CoinPainter oldDelegate) => false;
}
