import 'dart:typed_data';

import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../core/constants/app_assets.dart';
import '../../core/theme/app_colors.dart';
import 'painted_icons.dart';

/// Every icon role in the game.
enum AppIconType {
  undo,
  restart,
  heart,
  trash,
  settings,
  home,
  soundOn,
  soundOff,
  musicOn,
  musicOff,
  coinOrStar,
  lock,
  check,
  close,
  shop,
  pause,
  trophy,
  info,
  plus,
  arrowBack,
  // Drawn in code — no asset exists for these.
  hintBulb,
  eye,
  vibration,
  play,
  gift,
  noAds,
}

/// Asset-backed icon: SVG where available, white PNG otherwise.
///
/// PNGs in the library are only 100 px, so they are never rendered above
/// [maxPngSize] logical pixels; larger sizes fall back to the code-drawn glyph.
/// A missing or unreadable asset renders the fallback glyph instead of crashing.
class AppIcon extends StatelessWidget {
  const AppIcon(
    this.type, {
    super.key,
    this.size = 24,
    this.color = AppColors.textDark,
    this.semanticLabel,
  });

  static const double maxPngSize = 48;

  final AppIconType type;
  final double size;
  final Color color;
  final String? semanticLabel;

  static const Map<AppIconType, String> _assetPaths = {
    AppIconType.undo: 'undo',
    AppIconType.restart: 'restart',
    AppIconType.heart: 'heart',
  };

  static final Map<AppIconType, String> _resolvedAssets = {
    AppIconType.undo: AppAssets.icons.undo,
    AppIconType.restart: AppAssets.icons.restart,
    AppIconType.heart: AppAssets.icons.heart,
    AppIconType.trash: AppAssets.icons.trash,
    AppIconType.settings: AppAssets.icons.settings,
    AppIconType.home: AppAssets.icons.home,
    AppIconType.soundOn: AppAssets.icons.soundOn,
    AppIconType.soundOff: AppAssets.icons.soundOff,
    AppIconType.musicOn: AppAssets.icons.musicOn,
    AppIconType.musicOff: AppAssets.icons.musicOff,
    AppIconType.coinOrStar: AppAssets.icons.coinOrStar,
    AppIconType.lock: AppAssets.icons.lock,
    AppIconType.check: AppAssets.icons.check,
    AppIconType.close: AppAssets.icons.close,
    AppIconType.shop: AppAssets.icons.shop,
    AppIconType.pause: AppAssets.icons.pause,
    AppIconType.trophy: AppAssets.icons.trophy,
    AppIconType.info: AppAssets.icons.info,
    AppIconType.plus: AppAssets.icons.plus,
    AppIconType.arrowBack: AppAssets.icons.arrowBack,
  };

  static const Map<AppIconType, PaintedIconType> _painted = {
    AppIconType.hintBulb: PaintedIconType.hintBulb,
    AppIconType.eye: PaintedIconType.eye,
    AppIconType.vibration: PaintedIconType.vibration,
    AppIconType.play: PaintedIconType.play,
    AppIconType.gift: PaintedIconType.gift,
    AppIconType.noAds: PaintedIconType.noAds,
  };

  @override
  Widget build(BuildContext context) {
    final painted = _painted[type];
    final label = semanticLabel;

    Widget child;
    if (painted != null) {
      child = PaintedIcon(type: painted, size: size, color: color);
    } else {
      child = _AssetIcon(
        type: type,
        path: _resolvedAssets[type],
        size: size,
        color: color,
      );
    }

    if (label == null) {
      return ExcludeSemantics(child: child);
    }
    return Semantics(label: label, image: true, child: child);
  }
}

class _AssetIcon extends StatelessWidget {
  const _AssetIcon({
    required this.type,
    required this.path,
    required this.size,
    required this.color,
  });

  final AppIconType type;
  final String? path;
  final double size;
  final Color color;

  @override
  Widget build(BuildContext context) {
    final path = this.path;
    if (path == null) {
      return PaintedIcon(
          type: PaintedIconType.fallback, size: size, color: color);
    }

    final isSvg = path.endsWith('.svg');
    final dimension = isSvg ? size : size.clamp(12.0, AppIcon.maxPngSize);

    return SizedBox.square(
      dimension: dimension,
      child: FutureBuilder<ByteData>(
        future: _IconBytes.load(path),
        builder: (context, snapshot) {
          final bytes = snapshot.data;
          if (bytes == null) {
            // Loading, or a missing asset: the fallback keeps layout stable.
            return PaintedIcon(
              type: PaintedIconType.fallback,
              size: dimension,
              color: snapshot.hasError ? color : AppColors.transparent,
            );
          }
          if (isSvg) {
            return SvgPicture.memory(
              bytes.buffer.asUint8List(),
              width: dimension,
              height: dimension,
              colorFilter: ColorFilter.mode(color, BlendMode.srcIn),
            );
          }
          return Image.memory(
            bytes.buffer.asUint8List(),
            width: dimension,
            height: dimension,
            filterQuality: FilterQuality.high,
            color: color,
            colorBlendMode: BlendMode.srcIn,
            gaplessPlayback: true,
          );
        },
      ),
    );
  }
}

/// Caches asset bytes so each icon is read at most once.
abstract final class _IconBytes {
  static final Map<String, Future<ByteData>> _cache = {};

  static Future<ByteData> load(String path) {
    return _cache.putIfAbsent(
      path,
      () => rootBundle.load(path),
    );
  }
}
