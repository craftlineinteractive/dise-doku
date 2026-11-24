import 'package:flutter/widgets.dart';

import '../../core/theme/app_colors.dart';
import '../../core/theme/app_gradients.dart';

/// A glossy heart drawn in code: gradient body, white shine, darker outline.
class HeartShape extends StatelessWidget {
  const HeartShape({
    super.key,
    this.size = 32,
    this.gradient = AppGradients.heartFace,
    this.outlineColor = AppColors.redLip,
    this.filled = true,
  });

  final double size;
  final Gradient gradient;
  final Color outlineColor;
  final bool filled;

  @override
  Widget build(BuildContext context) {
    return RepaintBoundary(
      child: SizedBox.square(
        dimension: size,
        child: CustomPaint(
          painter: _HeartPainter(
            gradient: gradient,
            outlineColor: outlineColor,
            filled: filled,
          ),
        ),
      ),
    );
  }
}

Path heartPath(Size size) {
  final w = size.width;
  final h = size.height;
  return Path()
    ..moveTo(w * 0.5, h * 0.28)
    ..cubicTo(w * 0.5, h * 0.08, w * 0.16, h * 0.0, w * 0.07, h * 0.26)
    ..cubicTo(-w * 0.02, h * 0.5, w * 0.24, h * 0.72, w * 0.5, h * 0.96)
    ..cubicTo(w * 0.76, h * 0.72, w * 1.02, h * 0.5, w * 0.93, h * 0.26)
    ..cubicTo(w * 0.84, h * 0.0, w * 0.5, h * 0.08, w * 0.5, h * 0.28)
    ..close();
}

class _HeartPainter extends CustomPainter {
  const _HeartPainter({
    required this.gradient,
    required this.outlineColor,
    required this.filled,
  });

  final Gradient gradient;
  final Color outlineColor;
  final bool filled;

  @override
  void paint(Canvas canvas, Size size) {
    final path = heartPath(size);
    final outline = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.shortestSide * 0.09
      ..strokeJoin = StrokeJoin.round
      ..color = filled ? outlineColor : outlineColor.withValues(alpha: 0.55);

    if (filled) {
      canvas.drawPath(
        path,
        Paint()..shader = gradient.createShader(Offset.zero & size),
      );
    } else {
      canvas.drawPath(
        path,
        Paint()..color = AppColors.white.withValues(alpha: 0.55),
      );
    }

    canvas.drawPath(path, outline);

    if (filled) {
      // Glossy shine on the upper-left lobe.
      canvas.save();
      canvas.clipPath(path);
      canvas.drawOval(
        Rect.fromCenter(
          center: Offset(size.width * 0.32, size.height * 0.28),
          width: size.width * 0.22,
          height: size.height * 0.14,
        ),
        Paint()..color = AppColors.white.withValues(alpha: 0.55),
      );
      canvas.restore();
    }
  }

  @override
  bool shouldRepaint(_HeartPainter old) =>
      old.gradient != gradient ||
      old.outlineColor != outlineColor ||
      old.filled != filled;
}
