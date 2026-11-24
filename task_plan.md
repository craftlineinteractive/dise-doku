# DiceDoku — asset organization task plan

Scope: organization only. No game screens or gameplay logic. `row_assets/` is read-only (copy out, never modify).

## Steps
1. **Inventory** — recursive scan of `row_assets`, per-pack file types/counts/sizes, read every license/readme → `docs/asset_inventory.md`.
2. **Structure** — create `assets/{audio/{sfx,music,jingles},fonts,icons,images/reference,lottie,credits}`.
3. **SFX** — 18 roles, 1 main pick + 2 alternates each, from interface-sounds / ui-audio / digital-audio / impact-sounds / casino-audio. Trim silence, normalise, WAV 16-bit 44.1 kHz mono, <100 KB each.
4. **Jingles** — win / lose / level_start / reward from `kenney_music-jingles`.
5. **Music** — max 3 loops from the SunixMuz casual/platformer pack, MP3 128 kbps, <3 MB each.
6. **Fonts** — Fredoka 400/500/600/700 (+ variable) and Lilita One, with OFL texts.
7. **Icons** — ~26 UI roles, white single-colour, SVG preferred.
8. **Reference images** — 5 dice faces + 1 chip from `kenney_boardgame-pack`.
9. **Manifest + credits** — `docs/asset_manifest.md`, `assets/credits/CREDITS.md`, license texts, `.gitignore` entry.
10. **Flutter wiring** — `pubspec.yaml` assets + font families, `lib/core/constants/app_assets.dart`, existence unit test.
11. **Verify** — `flutter pub get`, `flutter analyze`, `flutter test`, final report.

## Environment notes
- `flutter` at `C:\flutter\bin\flutter` (not on PATH).
- `ffmpeg` not installed on the machine; used a portable download in a temp dir (no system install).
