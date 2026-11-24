# Progress log — DiceDoku asset pass

## Done
- Scanned `row_assets` (3,665 files, ~100 MB, 13 packs + loose `puzzle-1-a.mp3`); row_assets untouched.
- Read all license/readme text (Kenney packs = CC0; Fredoka/Lilita One = SIL OFL 1.1; SunixMuz pack = CC BY 4.0, attribution required).
- ffmpeg was not installed → portable ffmpeg 9.1 used from a temp folder (no system install), so all conversions are real.
- Copied + converted everything into `assets/`: 18 SFX (WAV 16-bit mono, all < 100 KB), 36 alternates,
  4 jingles (MP3), 3 music loops (MP3 128 kbps), 6 fonts (+ variable spare), 20 white icons, 6 reference images, 12 license texts.
- `docs/asset_inventory.md`, `docs/asset_manifest.md` (105 rows + role table), `assets/credits/CREDITS.md`.
- `pubspec.yaml`: 6 asset folders, Fredoka (400/500/600/700) + LilitaOne (400).
- `lib/core/constants/app_assets.dart` + `test/app_assets_test.dart` (existence checks).
- `row_assets/` added to `.gitignore`.

## Verification
- `flutter pub get` — OK
- `flutter analyze` — No issues found
- `flutter test` — 5/5 passed (4 asset-existence + 1 default widget smoke test)
- `assets/` total: ~7.0 MB

## Open items for the user
- Audition every SFX role (main + 2 alternates) and the 4 jingles; nothing was judged by listening.
- Confirm the three music loops sound right at their loop boundary (no explicit loop points in the source).
- Six icons had no match in the library (hint_bulb, eye, vibration, play, gift, no_ads) — draw in code.
