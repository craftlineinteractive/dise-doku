import 'dart:io';

import 'package:disedoku/core/constants/app_assets.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('AppAssets paths exist on disk', () {
    void expectFilesExist(List<String> paths) {
      for (final path in paths) {
        expect(
          File(path).existsSync(),
          isTrue,
          reason: 'Missing asset: $path',
        );
      }
    }

    test('sound effects', () {
      expect(AppAssets.sfx.all, isNotEmpty);
      expectFilesExist(AppAssets.sfx.all);
    });

    test('music', () {
      expectFilesExist(AppAssets.music.all);
    });

    test('jingles', () {
      expectFilesExist(AppAssets.jingles.all);
    });

    test('icons', () {
      expect(AppAssets.icons.all, isNotEmpty);
      expectFilesExist(AppAssets.icons.all);
    });
  });
}
