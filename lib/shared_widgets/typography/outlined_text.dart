import 'package:flutter/widgets.dart';

import '../../core/theme/app_colors.dart';

/// Game-style display text: a thick outer stroke, a fill colour on top and an
/// optional soft drop shadow underneath.
///
/// Used for titles, numbers and button labels. Body copy uses plain `Text`.
class OutlinedText extends StatelessWidget {
  const OutlinedText(
    this.text, {
    super.key,
    required this.style,
    this.strokeColor = AppColors.navy,
    this.strokeWidth = 4,
    this.shadowColor = AppColors.shadowMedium,
    this.shadowOffset = const Offset(0, 3),
    this.shadowBlur = 0,
    this.textAlign,
    this.maxLines,
    this.overflow = TextOverflow.ellipsis,
    this.softWrap = true,
  });

  final String text;
  final TextStyle style;
  final Color strokeColor;
  final double strokeWidth;
  final Color shadowColor;
  final Offset shadowOffset;
  final double shadowBlur;
  final TextAlign? textAlign;
  final int? maxLines;
  final TextOverflow overflow;
  final bool softWrap;

  @override
  Widget build(BuildContext context) {
    final fill = style;
    final stroke = style.copyWith(
      foreground: Paint()
        ..style = PaintingStyle.stroke
        ..strokeWidth = strokeWidth
        ..strokeJoin = StrokeJoin.round
        ..color = strokeColor,
      shadows: null,
    );

    return Stack(
      alignment: Alignment.center,
      children: [
        // Shadow is painted behind the stroke so the outline stays crisp.
        Text(
          text,
          textAlign: textAlign,
          maxLines: maxLines,
          overflow: overflow,
          softWrap: softWrap,
          style: style.copyWith(
            foreground: null,
            color: shadowColor,
            shadows: [
              Shadow(
                color: shadowColor,
                offset: shadowOffset,
                blurRadius: shadowBlur,
              ),
            ],
          ),
        ),
        Text(
          text,
          textAlign: textAlign,
          maxLines: maxLines,
          overflow: overflow,
          softWrap: softWrap,
          style: stroke,
        ),
        Text(
          text,
          textAlign: textAlign,
          maxLines: maxLines,
          overflow: overflow,
          softWrap: softWrap,
          style: fill.copyWith(foreground: null),
        ),
      ],
    );
  }
}
