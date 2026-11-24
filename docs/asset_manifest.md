# Asset manifest — DiceDoku

Everything under `assets/` that ships with the app, and where it came from.
Source paths are relative to `row_assets/` (the untouched raw library).

- **Total size of `assets/`: ~7.0 MB** (budget: < 15 MB).
- Audio is converted: SFX → WAV 16-bit PCM mono 44.1 kHz (3 long clips at 22.05 kHz to stay under 100 KB),
  jingles and music → MP3 128 kbps. All were silence-trimmed and loudness-normalised with ffmpeg
  (SFX `loudnorm I=-16 LUFS`, jingles `I=-18 LUFS`).
- Icons are single-colour white and meant to be tinted at runtime.
- `assets/lottie/` holds only `.gitkeep`; Lottie JSONs come later.
- `assets/images/reference/` and `assets/audio/sfx_alternates/` are **not** registered in `pubspec.yaml`
  (reference art and swap candidates, not shipped).

## Files

| New path | Source path in `row_assets/` | Original filename | License | Size | Role |
|---|---|---|---|---|---|
| assets/audio/sfx/tap.wav | kenney_interface-sounds (1)/Audio/click_001.ogg | click_001.ogg | CC0 1.0 | 8.1 KB | sfx: button tap |
| assets/audio/sfx/place_die.wav | kenney_casino-audio/Audio/chip-lay-1.ogg | chip-lay-1.ogg | CC0 1.0 | 14.3 KB | sfx: die placed on a cell |
| assets/audio/sfx/pickup_die.wav | kenney_casino-audio/Audio/dice-grab-1.ogg | dice-grab-1.ogg | CC0 1.0 | 60.0 KB | sfx: die picked up |
| assets/audio/sfx/invalid.wav | kenney_interface-sounds (1)/Audio/error_001.ogg | error_001.ogg | CC0 1.0 | 13.7 KB | sfx: invalid drop |
| assets/audio/sfx/tile_green.wav | kenney_digital-audio/Audio/pepSound1.ogg | pepSound1.ogg | CC0 1.0 | 37.8 KB | sfx: clue tile matched |
| assets/audio/sfx/win.wav | kenney_digital-audio/Audio/powerUp3.ogg | powerUp3.ogg | CC0 1.0 | 74.2 KB | sfx: win |
| assets/audio/sfx/lose.wav | kenney_digital-audio/Audio/lowDown.ogg | lowDown.ogg | CC0 1.0 | 55.5 KB | sfx: lose |
| assets/audio/sfx/coin.wav | kenney_casino-audio/Audio/chips-collide-1.ogg | chips-collide-1.ogg | CC0 1.0 | 20.4 KB | sfx: coin collect |
| assets/audio/sfx/heart_lost.wav | kenney_digital-audio/Audio/phaserDown2.ogg | phaserDown2.ogg | CC0 1.0 | 21.9 KB | sfx: heart lost |
| assets/audio/sfx/heart_refill.wav | kenney_digital-audio/Audio/phaserUp2.ogg | phaserUp2.ogg | CC0 1.0 | 30.7 KB | sfx: heart refill |
| assets/audio/sfx/hint.wav | kenney_digital-audio/Audio/phaseJump1.ogg | phaseJump1.ogg | CC0 1.0 | 31.9 KB | sfx: hint |
| assets/audio/sfx/undo.wav | kenney_interface-sounds (1)/Audio/back_001.ogg | back_001.ogg | CC0 1.0 | 4.7 KB | sfx: undo |
| assets/audio/sfx/whoosh.wav | kenney_interface-sounds (1)/Audio/scratch_001.ogg | scratch_001.ogg | CC0 1.0 | 10.3 KB | sfx: screen transition |
| assets/audio/sfx/toggle.wav | kenney_interface-sounds (1)/Audio/toggle_002.ogg | toggle_002.ogg | CC0 1.0 | 8.4 KB | sfx: toggle switch |
| assets/audio/sfx/dialog_open.wav | kenney_interface-sounds (1)/Audio/open_001.ogg | open_001.ogg | CC0 1.0 | 12.3 KB | sfx: dialog open |
| assets/audio/sfx/dialog_close.wav | kenney_interface-sounds (1)/Audio/close_001.ogg | close_001.ogg | CC0 1.0 | 12.3 KB | sfx: dialog close |
| assets/audio/sfx/reward_claim.wav | kenney_digital-audio/Audio/powerUp8.ogg | powerUp8.ogg | CC0 1.0 | 23.8 KB | sfx: reward claimed |
| assets/audio/sfx/dice_roll.wav | kenney_casino-audio/Audio/dice-shake-1.ogg | dice-shake-1.ogg | CC0 1.0 | 62.8 KB | sfx: dice roll (splash / home animation) |
| assets/audio/sfx_alternates/tap_alt1.wav | kenney_ui-audio/Audio/click2.ogg | click2.ogg | CC0 1.0 | 4.3 KB | alternate for tap |
| assets/audio/sfx_alternates/tap_alt2.wav | kenney_interface-sounds (1)/Audio/select_002.ogg | select_002.ogg | CC0 1.0 | 3.2 KB | alternate for tap |
| assets/audio/sfx_alternates/place_die_alt1.wav | kenney_interface-sounds (1)/Audio/drop_001.ogg | drop_001.ogg | CC0 1.0 | 9.4 KB | alternate for place_die |
| assets/audio/sfx_alternates/place_die_alt2.wav | kenney_impact-sounds (1)/Audio/impactSoft_medium_002.ogg | impactSoft_medium_002.ogg | CC0 1.0 | 11.1 KB | alternate for place_die |
| assets/audio/sfx_alternates/pickup_die_alt1.wav | kenney_casino-audio/Audio/chips-handle-1.ogg | chips-handle-1.ogg | CC0 1.0 | 51.3 KB | alternate for pickup_die |
| assets/audio/sfx_alternates/pickup_die_alt2.wav | kenney_casino-audio/Audio/chips-handle-3.ogg | chips-handle-3.ogg | CC0 1.0 | 19.3 KB | alternate for pickup_die |
| assets/audio/sfx_alternates/invalid_alt1.wav | kenney_interface-sounds (1)/Audio/error_004.ogg | error_004.ogg | CC0 1.0 | 8.7 KB | alternate for invalid |
| assets/audio/sfx_alternates/invalid_alt2.wav | kenney_interface-sounds (1)/Audio/error_002.ogg | error_002.ogg | CC0 1.0 | 14.0 KB | alternate for invalid |
| assets/audio/sfx_alternates/tile_green_alt1.wav | kenney_digital-audio/Audio/highUp.ogg | highUp.ogg | CC0 1.0 | 40.6 KB | alternate for tile_green |
| assets/audio/sfx_alternates/tile_green_alt2.wav | kenney_digital-audio/Audio/phaserUp1.ogg | phaserUp1.ogg | CC0 1.0 | 37.1 KB | alternate for tile_green |
| assets/audio/sfx_alternates/win_alt1.wav | kenney_digital-audio/Audio/powerUp1.ogg | powerUp1.ogg | CC0 1.0 | 83.0 KB | alternate for win |
| assets/audio/sfx_alternates/win_alt2.wav | kenney_interface-sounds (1)/Audio/confirmation_002.ogg | confirmation_002.ogg | CC0 1.0 | 45.5 KB | alternate for win |
| assets/audio/sfx_alternates/lose_alt1.wav | kenney_interface-sounds (1)/Audio/error_003.ogg | error_003.ogg | CC0 1.0 | 33.6 KB | alternate for lose |
| assets/audio/sfx_alternates/lose_alt2.wav | kenney_interface-sounds (1)/Audio/question_002.ogg | question_002.ogg | CC0 1.0 | 28.1 KB | alternate for lose |
| assets/audio/sfx_alternates/coin_alt1.wav | kenney_digital-audio/Audio/twoTone1.ogg | twoTone1.ogg | CC0 1.0 | 45.8 KB | alternate for coin |
| assets/audio/sfx_alternates/coin_alt2.wav | kenney_impact-sounds (1)/Audio/impactMetal_light_002.ogg | impactMetal_light_002.ogg | CC0 1.0 | 19.8 KB | alternate for coin |
| assets/audio/sfx_alternates/heart_lost_alt1.wav | kenney_interface-sounds (1)/Audio/error_006.ogg | error_006.ogg | CC0 1.0 | 20.1 KB | alternate for heart_lost |
| assets/audio/sfx_alternates/heart_lost_alt2.wav | kenney_impact-sounds (1)/Audio/impactSoft_heavy_002.ogg | impactSoft_heavy_002.ogg | CC0 1.0 | 48.8 KB | alternate for heart_lost |
| assets/audio/sfx_alternates/heart_refill_alt1.wav | kenney_digital-audio/Audio/powerUp5.ogg | powerUp5.ogg | CC0 1.0 | 27.9 KB | alternate for heart_refill |
| assets/audio/sfx_alternates/heart_refill_alt2.wav | kenney_interface-sounds (1)/Audio/confirmation_004.ogg | confirmation_004.ogg | CC0 1.0 | 41.6 KB | alternate for heart_refill |
| assets/audio/sfx_alternates/hint_alt1.wav | kenney_digital-audio/Audio/zapTwoTone.ogg | zapTwoTone.ogg | CC0 1.0 | 53.8 KB | alternate for hint |
| assets/audio/sfx_alternates/hint_alt2.wav | kenney_interface-sounds (1)/Audio/question_001.ogg | question_001.ogg | CC0 1.0 | 41.5 KB | alternate for hint |
| assets/audio/sfx_alternates/undo_alt1.wav | kenney_interface-sounds (1)/Audio/back_003.ogg | back_003.ogg | CC0 1.0 | 7.5 KB | alternate for undo |
| assets/audio/sfx_alternates/undo_alt2.wav | kenney_interface-sounds (1)/Audio/back_002.ogg | back_002.ogg | CC0 1.0 | 5.8 KB | alternate for undo |
| assets/audio/sfx_alternates/whoosh_alt1.wav | kenney_interface-sounds (1)/Audio/scratch_003.ogg | scratch_003.ogg | CC0 1.0 | 10.4 KB | alternate for whoosh |
| assets/audio/sfx_alternates/whoosh_alt2.wav | kenney_casino-audio/Audio/card-shove-1.ogg | card-shove-1.ogg | CC0 1.0 | 65.7 KB | alternate for whoosh |
| assets/audio/sfx_alternates/toggle_alt1.wav | kenney_interface-sounds (1)/Audio/switch_002.ogg | switch_002.ogg | CC0 1.0 | 11.9 KB | alternate for toggle |
| assets/audio/sfx_alternates/toggle_alt2.wav | kenney_ui-audio/Audio/switch1.ogg | switch1.ogg | CC0 1.0 | 15.4 KB | alternate for toggle |
| assets/audio/sfx_alternates/dialog_open_alt1.wav | kenney_interface-sounds (1)/Audio/maximize_002.ogg | maximize_002.ogg | CC0 1.0 | 21.8 KB | alternate for dialog_open |
| assets/audio/sfx_alternates/dialog_open_alt2.wav | kenney_interface-sounds (1)/Audio/open_002.ogg | open_002.ogg | CC0 1.0 | 26.5 KB | alternate for dialog_open |
| assets/audio/sfx_alternates/dialog_close_alt1.wav | kenney_interface-sounds (1)/Audio/minimize_002.ogg | minimize_002.ogg | CC0 1.0 | 21.8 KB | alternate for dialog_close |
| assets/audio/sfx_alternates/dialog_close_alt2.wav | kenney_interface-sounds (1)/Audio/close_002.ogg | close_002.ogg | CC0 1.0 | 26.5 KB | alternate for dialog_close |
| assets/audio/sfx_alternates/reward_claim_alt1.wav | kenney_interface-sounds (1)/Audio/confirmation_001.ogg | confirmation_001.ogg | CC0 1.0 | 24.5 KB | alternate for reward_claim |
| assets/audio/sfx_alternates/reward_claim_alt2.wav | kenney_casino-audio/Audio/chips-stack-1.ogg | chips-stack-1.ogg | CC0 1.0 | 15.1 KB | alternate for reward_claim |
| assets/audio/sfx_alternates/dice_roll_alt1.wav | kenney_casino-audio/Audio/dice-shake-2.ogg | dice-shake-2.ogg | CC0 1.0 | 59.1 KB | alternate for dice_roll |
| assets/audio/sfx_alternates/dice_roll_alt2.wav | kenney_casino-audio/Audio/dice-throw-2.ogg | dice-throw-2.ogg | CC0 1.0 | 33.9 KB | alternate for dice_roll |
| assets/audio/jingles/win_jingle.mp3 | kenney_music-jingles/Audio/Steel jingles/jingles_STEEL07.ogg | jingles_STEEL07.ogg | CC0 1.0 | 25.3 KB | jingle: level won |
| assets/audio/jingles/lose_jingle.mp3 | kenney_music-jingles/Audio/Sax jingles/jingles_SAX07.ogg | jingles_SAX07.ogg | CC0 1.0 | 28.2 KB | jingle: level lost |
| assets/audio/jingles/level_start_jingle.mp3 | kenney_music-jingles/Audio/Pizzicato jingles/jingles_PIZZI07.ogg | jingles_PIZZI07.ogg | CC0 1.0 | 21.7 KB | jingle: level start |
| assets/audio/jingles/reward_jingle.mp3 | kenney_music-jingles/Audio/Pizzicato jingles/jingles_PIZZI03.ogg | jingles_PIZZI03.ogg | CC0 1.0 | 18.8 KB | jingle: reward |
| assets/audio/music/menu_loop.mp3 | Casual-mobile-Platformer Music Pack FREE/sunixMuz - Beauty Night (FREE CCBY).mp3 | sunixMuz - Beauty Night (FREE CCBY).mp3 | CC BY 4.0 | 1160.9 KB | music: menu loop |
| assets/audio/music/game_loop.mp3 | Casual-mobile-Platformer Music Pack FREE/SunixMuz - Chill Together (FREE CCBY).mp3 | SunixMuz - Chill Together (FREE CCBY).mp3 | CC BY 4.0 | 1846.2 KB | music: gameplay loop |
| assets/audio/music/game_loop_alt.mp3 | Casual-mobile-Platformer Music Pack FREE/SunixMuz - Bird Town (FREE CCBY).mp3 | SunixMuz - Bird Town (FREE CCBY).mp3 | CC BY 4.0 | 1629.8 KB | music: alternative gameplay loop |
| assets/fonts/fredoka_regular.ttf | Fredoka,Lilita_One/Fredoka/static/Fredoka-Regular.ttf | Fredoka-Regular.ttf | SIL OFL 1.1 | 48.8 KB | font: Fredoka 400 |
| assets/fonts/fredoka_medium.ttf | Fredoka,Lilita_One/Fredoka/static/Fredoka-Medium.ttf | Fredoka-Medium.ttf | SIL OFL 1.1 | 48.8 KB | font: Fredoka 500 |
| assets/fonts/fredoka_semibold.ttf | Fredoka,Lilita_One/Fredoka/static/Fredoka-SemiBold.ttf | Fredoka-SemiBold.ttf | SIL OFL 1.1 | 48.7 KB | font: Fredoka 600 |
| assets/fonts/fredoka_bold.ttf | Fredoka,Lilita_One/Fredoka/static/Fredoka-Bold.ttf | Fredoka-Bold.ttf | SIL OFL 1.1 | 48.6 KB | font: Fredoka 700 |
| assets/fonts/fredoka_variable.ttf | Fredoka,Lilita_One/Fredoka/Fredoka-VariableFont_wdth,wght.ttf | Fredoka-VariableFont_wdth,wght.ttf | SIL OFL 1.1 | 154.0 KB | font: Fredoka variable (wdth/wght), spare - not registered |
| assets/fonts/lilitaone_regular.ttf | Fredoka,Lilita_One/Lilita_One/LilitaOne-Regular.ttf | LilitaOne-Regular.ttf | SIL OFL 1.1 | 26.2 KB | font: Lilita One 400 |
| assets/icons/undo.svg | kenney_board-game-icons/Vector/Icons/arrow_counterclockwise.svg | arrow_counterclockwise.svg | CC0 1.0 | 0.9 KB | icon: undo |
| assets/icons/restart.svg | kenney_board-game-icons/Vector/Icons/arrow_clockwise.svg | arrow_clockwise.svg | CC0 1.0 | 0.9 KB | icon: restart |
| assets/icons/heart.svg | kenney_board-game-icons/Vector/Icons/suit_hearts.svg | suit_hearts.svg | CC0 1.0 | 0.5 KB | icon: heart |
| assets/icons/trash.png | kenney_game-icons (1)/PNG/White/2x/trashcan.png | trashcan.png | CC0 1.0 | 14.9 KB | icon: trash |
| assets/icons/settings.png | kenney_game-icons (1)/PNG/White/2x/gear.png | gear.png | CC0 1.0 | 15.8 KB | icon: settings |
| assets/icons/home.png | kenney_game-icons (1)/PNG/White/2x/home.png | home.png | CC0 1.0 | 14.9 KB | icon: home |
| assets/icons/sound_on.png | kenney_game-icons (1)/PNG/White/2x/audioOn.png | audioOn.png | CC0 1.0 | 15.3 KB | icon: sound on |
| assets/icons/sound_off.png | kenney_game-icons (1)/PNG/White/2x/audioOff.png | audioOff.png | CC0 1.0 | 15.0 KB | icon: sound off |
| assets/icons/music_on.png | kenney_game-icons (1)/PNG/White/2x/musicOn.png | musicOn.png | CC0 1.0 | 15.2 KB | icon: music on |
| assets/icons/music_off.png | kenney_game-icons (1)/PNG/White/2x/musicOff.png | musicOff.png | CC0 1.0 | 15.4 KB | icon: music off |
| assets/icons/coin_or_star.png | kenney_game-icons (1)/PNG/White/2x/star.png | star.png | CC0 1.0 | 15.3 KB | icon: coin / star |
| assets/icons/lock.png | kenney_game-icons (1)/PNG/White/2x/locked.png | locked.png | CC0 1.0 | 14.9 KB | icon: lock |
| assets/icons/check.png | kenney_game-icons (1)/PNG/White/2x/checkmark.png | checkmark.png | CC0 1.0 | 15.4 KB | icon: check |
| assets/icons/close.png | kenney_game-icons (1)/PNG/White/2x/cross.png | cross.png | CC0 1.0 | 15.1 KB | icon: close |
| assets/icons/shop.png | kenney_game-icons (1)/PNG/White/2x/shoppingBasket.png | shoppingBasket.png | CC0 1.0 | 15.2 KB | icon: shop |
| assets/icons/pause.png | kenney_game-icons (1)/PNG/White/2x/pause.png | pause.png | CC0 1.0 | 14.8 KB | icon: pause |
| assets/icons/trophy.png | kenney_game-icons (1)/PNG/White/2x/trophy.png | trophy.png | CC0 1.0 | 14.9 KB | icon: trophy |
| assets/icons/info.png | kenney_game-icons (1)/PNG/White/2x/information.png | information.png | CC0 1.0 | 15.1 KB | icon: info |
| assets/icons/plus.png | kenney_game-icons (1)/PNG/White/2x/plus.png | plus.png | CC0 1.0 | 14.9 KB | icon: plus |
| assets/icons/arrow_back.png | kenney_game-icons (1)/PNG/White/2x/arrowLeft.png | arrowLeft.png | CC0 1.0 | 14.9 KB | icon: back arrow |
| assets/images/reference/die_white_face_1.png | kenney_boardgame-pack/PNG/Dice/dieWhite1.png | dieWhite1.png | CC0 1.0 | 0.8 KB | reference art, not used in UI: white die, face 1 |
| assets/images/reference/die_white_face_2.png | kenney_boardgame-pack/PNG/Dice/dieWhite2.png | dieWhite2.png | CC0 1.0 | 0.8 KB | reference art, not used in UI: white die, face 2 |
| assets/images/reference/die_white_face_3.png | kenney_boardgame-pack/PNG/Dice/dieWhite3.png | dieWhite3.png | CC0 1.0 | 0.9 KB | reference art, not used in UI: white die, face 3 |
| assets/images/reference/die_red_face_1.png | kenney_boardgame-pack/PNG/Dice/dieRed1.png | dieRed1.png | CC0 1.0 | 0.8 KB | reference art, not used in UI: red die, face 1 |
| assets/images/reference/die_white_face_6_bordered.png | kenney_boardgame-pack/PNG/Dice/dieWhite_border6.png | dieWhite_border6.png | CC0 1.0 | 1.1 KB | reference art, not used in UI: white die, face 6, bordered |
| assets/images/reference/chip_blue.png | kenney_boardgame-pack/PNG/Chips/chipBlue.png | chipBlue.png | CC0 1.0 | 1.1 KB | reference art, not used in UI: blue chip |
| assets/credits/licenses/kenney_board_game_icons_cc0.txt | kenney_board-game-icons/License.txt | License.txt | CC0 1.0 | 0.6 KB | license text |
| assets/credits/licenses/kenney_game_icons_cc0.txt | kenney_game-icons (1)/license.txt | license.txt | CC0 1.0 | 0.5 KB | license text |
| assets/credits/licenses/kenney_boardgame_pack_cc0.txt | kenney_boardgame-pack/license.txt | license.txt | CC0 1.0 | 0.4 KB | license text |
| assets/credits/licenses/kenney_interface_sounds_cc0.txt | kenney_interface-sounds (1)/License.txt | License.txt | CC0 1.0 | 0.6 KB | license text |
| assets/credits/licenses/kenney_ui_audio_cc0.txt | kenney_ui-audio/License.txt | License.txt | CC0 1.0 | 0.5 KB | license text |
| assets/credits/licenses/kenney_digital_audio_cc0.txt | kenney_digital-audio/License.txt | License.txt | CC0 1.0 | 0.5 KB | license text |
| assets/credits/licenses/kenney_impact_sounds_cc0.txt | kenney_impact-sounds (1)/License.txt | License.txt | CC0 1.0 | 0.6 KB | license text |
| assets/credits/licenses/kenney_casino_audio_cc0.txt | kenney_casino-audio/License.txt | License.txt | CC0 1.0 | 0.5 KB | license text |
| assets/credits/licenses/kenney_music_jingles_cc0.txt | kenney_music-jingles/License.txt | License.txt | CC0 1.0 | 0.5 KB | license text |
| assets/credits/licenses/ofl_fredoka.txt | Fredoka,Lilita_One/Fredoka/OFL.txt | OFL.txt | SIL OFL 1.1 | 4.4 KB | license text |
| assets/credits/licenses/ofl_lilita_one.txt | Fredoka,Lilita_One/Lilita_One/OFL.txt | OFL.txt | SIL OFL 1.1 | 4.4 KB | license text |
| assets/credits/licenses/sunixmuz_music_pack_cc_by_4_0.txt | Casual-mobile-Platformer Music Pack FREE/Casual mobile Platformer Music Pack Copyright.txt | Casual mobile Platformer Music Pack Copyright.txt | CC BY 4.0 | 2.4 KB | license text |
## SFX role → chosen file + alternates

Main pick is what `AppAssets.sfx.*` points at. Alternates live in `assets/audio/sfx_alternates/`
(not registered in pubspec — swap a file in, or copy your favourite over the main one).
You cannot judge these by filename, so **audition all three per role**.

| Role | Main pick | Source | Alt 1 | Alt 2 |
|---|---|---|---|---|
| `tap` | `tap.wav` | `interface-sounds/click_001` | `ui-audio/click2` | `interface-sounds/select_002` |
| `place_die` | `place_die.wav` | `casino-audio/chip-lay-1` (soft chip clack) | `interface-sounds/drop_001` | `impact-sounds/impactSoft_medium_002` |
| `pickup_die` | `pickup_die.wav` | `casino-audio/dice-grab-1` | `casino-audio/chips-handle-1` | `casino-audio/chips-handle-3` |
| `invalid` | `invalid.wav` | `interface-sounds/error_001` | `interface-sounds/error_004` | `interface-sounds/error_002` |
| `tile_green` | `tile_green.wav` | `digital-audio/pepSound1` | `digital-audio/highUp` | `digital-audio/phaserUp1` |
| `win` | `win.wav` | `digital-audio/powerUp3` | `digital-audio/powerUp1` | `interface-sounds/confirmation_002` |
| `lose` | `lose.wav` | `digital-audio/lowDown` | `interface-sounds/error_003` | `interface-sounds/question_002` |
| `coin` | `coin.wav` | `casino-audio/chips-collide-1` (metal clink) | `digital-audio/twoTone1` | `impact-sounds/impactMetal_light_002` |
| `heart_lost` | `heart_lost.wav` | `digital-audio/phaserDown2` | `interface-sounds/error_006` | `impact-sounds/impactSoft_heavy_002` |
| `heart_refill` | `heart_refill.wav` | `digital-audio/phaserUp2` | `digital-audio/powerUp5` | `interface-sounds/confirmation_004` |
| `hint` | `hint.wav` | `digital-audio/phaseJump1` (magic) | `digital-audio/zapTwoTone` | `interface-sounds/question_001` |
| `undo` | `undo.wav` | `interface-sounds/back_001` | `interface-sounds/back_003` | `interface-sounds/back_002` |
| `whoosh` | `whoosh.wav` | `interface-sounds/scratch_001` | `interface-sounds/scratch_003` | `casino-audio/card-shove-1` |
| `toggle` | `toggle.wav` | `interface-sounds/toggle_002` | `interface-sounds/switch_002` | `ui-audio/switch1` |
| `dialog_open` | `dialog_open.wav` | `interface-sounds/open_001` | `interface-sounds/maximize_002` | `interface-sounds/open_002` |
| `dialog_close` | `dialog_close.wav` | `interface-sounds/close_001` | `interface-sounds/minimize_002` | `interface-sounds/close_002` |
| `reward_claim` | `reward_claim.wav` | `digital-audio/powerUp8` | `interface-sounds/confirmation_001` | `casino-audio/chips-stack-1` |
| `dice_roll` | `dice_roll.wav` | `casino-audio/dice-shake-1` | `casino-audio/dice-shake-2` | `casino-audio/dice-throw-2` |

Notes:
- Source clips from `kenney_interface-sounds` are genuinely tiny (a click can be 10–40 ms), so several
  SFX are very short by design — that is the pack, not a bad trim.
- `dice_roll`, `dice_roll_alt1` and `hint_alt1` would have exceeded 100 KB as mono 44.1 kHz PCM,
  so they are mono **22.05 kHz** (64 / 60 / 55 KB).

## Jingles

| Role | File | Source | Duration |
|---|---|---|---|
| Win (level cleared) | `win_jingle.mp3` | `music-jingles/Steel jingles/jingles_STEEL07` | 1.55 s |
| Lose (level failed) | `lose_jingle.mp3` | `music-jingles/Sax jingles/jingles_SAX07` | 1.73 s |
| Level start | `level_start_jingle.mp3` | `music-jingles/Pizzicato jingles/jingles_PIZZI07` | 1.32 s |
| Reward | `reward_jingle.mp3` | `music-jingles/Pizzicato jingles/jingles_PIZZI03` | 1.13 s |

Every jingle in this pack is a single short sting (0.28–1.76 s); there are no multi-second fanfares.
Music→mood pairing needs your ears: win/lose especially (steel drums vs. sax are both "warm", not
clearly major/minor). Swapping is one file copy from `row_assets/kenney_music-jingles/Audio/`.

## Music

| Slot | File | Source track | Length | Bitrate |
|---|---|---|---|---|
| Menu | `menu_loop.mp3` | `sunixMuz - Beauty Night (FREE CCBY)` | 74.2 s | 128 kbps |
| Gameplay | `game_loop.mp3` | `SunixMuz - Chill Together (FREE CCBY)` | 118.1 s | 128 kbps |
| Gameplay alt | `game_loop_alt.mp3` | `SunixMuz - Bird Town (FREE CCBY)` | 104.2 s | 128 kbps |

**Loopability**: all three tracks end with a musical phrase rather than a hard cut, but none ship with
explicit loop points or a seamless-loop version. They are calm and mid-tempo, suitable for casual play,
but expect a small gap/settle at the loop boundary — either crossfade in the audio layer or trim the
tail fade to taste. Not verified by listening.

`puzzle-1-a.mp3` (loose file, 57.7 s) was **not** used: it has no tags proving it is the OpenGameArt
"Puzzle Tune 1", and the sunixMuz tracks already cover menu/gameplay. If you swap it in, CC BY 3.0
attribution becomes mandatory.

## Fonts

| File | Family / weight | Notes |
|---|---|---|
| `fredoka_regular.ttf` | Fredoka 400 | static instance |
| `fredoka_medium.ttf` | Fredoka 500 | static instance |
| `fredoka_semibold.ttf` | Fredoka 600 | static instance |
| `fredoka_bold.ttf` | Fredoka 700 | static instance |
| `fredoka_variable.ttf` | Fredoka variable (`wdth`, `wght`) | spare copy, not registered in `pubspec.yaml` |
| `lilitaone_regular.ttf` | Lilita One 400 | display face |

Fredoka **is** a variable font; because Flutter picks weights most reliably from per-weight files,
the four static instances are what `pubspec.yaml` registers, and the variable TTF is kept alongside
for future use (it costs 154 KB and is not bundled).

## Icons

20 of the 26 requested roles could be filled from the library — all single-colour white, so they tint
cleanly (`ColorFiltered` / `srcIn`).

- **SVG (3)**: `undo.svg`, `restart.svg`, `heart.svg` — from `kenney_board-game-icons`, already pure
  `#FFFFFF` vector.
- **PNG (17)**: from `kenney_game-icons (1)/PNG/White/2x`, **100 × 100 px**, transparent white glyphs.
  That is the largest per-icon size in the pack (the 1x set is 50 px; the vector pack is a single
  combined spritesheet, not one file per glyph). If you need crisper art later, the
  `kenney_board-game-icons` SVG set or a hand-drawn glyph is the upgrade path.

**Missing — will draw in code:**

| Role | Status |
|---|---|
| `hint_bulb` | missing — will draw in code (closest in-library: `interface-sounds/question_001` has audio only; no bulb glyph in either icon pack) |
| `eye` | missing — will draw in code |
| `vibration` | missing — will draw in code |
| `play` | missing — will draw in code (`pause` exists, so it is an easy triangle) |
| `gift` | missing — will draw in code |
| `no_ads` | missing — will draw in code |

## Reference images

Six PNGs in `assets/images/reference/` (64 × 64), **inspiration only, not registered in pubspec**:
three white die faces (1, 2, 3), one red die face (1), one bordered white die (face 6), one blue chip.
Nothing was taken from `kenney_ui-pack (1)` — the UI will be drawn in code.
