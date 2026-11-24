import 'dart:math' as math;

import 'package:flutter/widgets.dart';

import '../../core/theme/app_colors.dart';

/// Icons the asset library does not contain, drawn in code so they match the
/// chunky, rounded look of the Kenney glyphs.
enum PaintedIconType { hintBulb, eye, vibration, play, gift, noAds, fallback }

class PaintedIcon extends StatelessWidget {
  const PaintedIcon({
    super.key,
    required this.type,
    required this.size,
    required this.color,
  });

  final PaintedIconType type;
  final double size;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return SizedBox.square(
      dimension: size,
      child: CustomPaint(painter: _PaintedIconPainter(type: type, color: color)),
    );
  }
}

class _PaintedIconPainter extends CustomPainter {
  const _PaintedIconPainter({required this.type, required this.color});

  final PaintedIconType type;
  final Color color;

  @override
  void paint(Canvas canvas, Size size) {
    final s = size.shortestSide;
    final paint = Paint()..color = color;
    final stroke = (s * 0.1).clamp(2.0, 6.0);

    switch (type) {
      case PaintedIconType.hintBulb:
        _bulb(canvas, s, paint, stroke);
      case PaintedIconType.eye:
        _eye(canvas, s, paint, stroke);
      case PaintedIconType.vibration:
        _vibration(canvas, s, paint, stroke);
      case PaintedIconType.play:
        _play(canvas, s, paint);
      case PaintedIconType.gift:
        _gift(canvas, s, paint, stroke);
      case PaintedIconType.noAds:
        _noAds(canvas, s, paint, stroke);
      case PaintedIconType.fallback:
        _fallback(canvas, s, paint, stroke);
    }
  }

  void _bulb(Canvas canvas, double s, Paint paint, double stroke) {
    final c = Offset(s * 0.5, s * 0.42);
    canvas.drawCircle(c, s * 0.24, paint);
    canvas.drawRRect(
      RRect.fromRectAndRadius(
        Rect.fromCenter(
            center: Offset(s * 0.5, s * 0.76), width: s * 0.22, height: s * 0.16),
        Radius.circular(s * 0.06),
      ),
      paint,
    );
    final rayPaint = Paint()
      ..color = paint.color
      ..strokeWidth = stroke * 0.8
      ..strokeCap = StrokeCap.round;
    for (var i = 0; i < 5; i++) {
      final a = -math.pi / 2 + (i - 2) * 0.62;
      final from = Offset(
        s * 0.5 + math.cos(a) * s * 0.33,
        s * 0.42 + math.sin(a) * s * 0.33,
      );
      final to = Offset(
        s * 0.5 + math.cos(a) * s * 0.43,
        s * 0.42 + math.sin(a) * s * 0.43,
      );
      canvas.drawLine(from, to, rayPaint);
    }
  }

  void _eye(Canvas canvas, double s, Paint paint, double stroke) {
    final strokePaint = Paint()
      ..color = paint.color
      ..style = PaintingStyle.stroke
      ..strokeWidth = stroke
      ..strokeCap = StrokeCap.round;
    final path = Path()
      ..moveTo(s * 0.08, s * 0.5)
      ..quadraticBezierTo(s * 0.5, s * 0.14, s * 0.92, s * 0.5)
      ..quadraticBezierTo(s * 0.5, s * 0.86, s * 0.08, s * 0.5)
      ..close();
    canvas.drawPath(path, strokePaint);
    canvas.drawCircle(Offset(s * 0.5, s * 0.5), s * 0.15, paint);
  }

  void _vibration(Canvas canvas, double s, Paint paint, double stroke) {
    canvas.drawRRect(
      RRect.fromRectAndRadius(
        Rect.fromCenter(
            center: Offset(s * 0.5, s * 0.5), width: s * 0.36, height: s * 0.62),
        Radius.circular(s * 0.1),
      ),
      paint,
    );
    final wave = Paint()
      ..color = paint.color
      ..style = PaintingStyle.stroke
      ..strokeWidth = stroke
      ..strokeCap = StrokeCap.round;
    for (final side in [-1.0, 1.0]) {
      final x = s * 0.5 + side * s * 0.28;
      final path = Path()
        ..moveTo(x, s * 0.34)
        ..quadraticBezierTo(x + side * s * 0.14, s * 0.5, x, s * 0.66);
      canvas.drawPath(path, wave);
    }
  }

  void _play(Canvas canvas, double s, Paint paint) {
    final path = Path()
      ..moveTo(s * 0.34, s * 0.18)
      ..lineTo(s * 0.82, s * 0.5)
      ..lineTo(s * 0.34, s * 0.82)
      ..close();
    canvas.drawPath(path, paint);
  }

  void _gift(Canvas canvas, double s, Paint paint, double stroke) {
    canvas.drawRRect(
      RRect.fromRectAndRadius(
        Rect.fromLTWH(s * 0.16, s * 0.46, s * 0.68, s * 0.4),
        Radius.circular(s * 0.07),
      ),
      paint,
    );
    canvas.drawRRect(
      RRect.fromRectAndRadius(
        Rect.fromLTWH(s * 0.12, s * 0.34, s * 0.76, s * 0.14),
        Radius.circular(s * 0.06),
      ),
      paint,
    );
    final ribbon = Paint()..color = AppColors.cream.withValues(alpha: 0.9);
    canvas.drawRect(
      Rect.fromLTWH(s * 0.44, s * 0.34, s * 0.12, s * 0.52),
      ribbon,
    );
    final bow = Paint()
      ..color = paint.color
      ..style = PaintingStyle.stroke
      ..strokeWidth = stroke
      ..strokeCap = StrokeCap.round;
    canvas.drawCircle(Offset(s * 0.34, s * 0.24), s * 0.1, bow);
    canvas.drawCircle(Offset(s * 0.66, s * 0.24), s * 0.1, bow);
  }

  void _noAds(Canvas canvas, double s, Paint paint, double stroke) {
    canvas.drawCircle(Offset(s * 0.5, s * 0.5), s * 0.34, paint);
    final inner = Paint()..color = AppColors.cream;
    canvas.drawCircle(Offset(s * 0.5, s * 0.5), s * 0.26, inner);
    final slash = Paint()
      ..color = paint.color
      ..style = PaintingStyle.stroke
      ..strokeWidth = stroke * 1.1
      ..strokeCap = StrokeCap.round;
    canvas.drawLine(
      Offset(s * 0.28, s * 0.72),
      Offset(s * 0.72, s * 0.28),
      slash,
    );
    final tp = TextPainter(
      text: TextSpan(
        text: 'AD',
        style: TextStyle(
          fontFamily: 'Fredoka',
          fontSize: s * 0.24,
          fontWeight: FontWeight.w700,
          color: paint.color,
        ),
      ),
      textDirection: TextDirection.ltr,
    )..layout();
    tp.paint(canvas, Offset((s - tp.width) / 2, (s - tp.height) / 2));
  }

  void _fallback(Canvas canvas, double s, Paint paint, double stroke) {
    canvas.drawRRect(
      RRect.fromRectAndRadius(
        Rect.fromLTWH(s * 0.16, s * 0.16, s * 0.68, s * 0.68),
        Radius.circular(s * 0.2),
      ),
      Paint()
        ..color = paint.color
        ..style = PaintingStyle.stroke
        ..strokeWidth = stroke,
    );
    canvas.drawCircle(Offset(s * 0.5, s * 0.5), s * 0.08, paint);
  }

  @override
  bool shouldRepaint(_PaintedIconPainter oldDelegate) =>
      oldDelegate.type != type || oldDelegate.color != color;
}
