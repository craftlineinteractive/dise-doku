/// Central registry of every bundled asset path used by DiceDoku.
///
/// Paths are relative to the Flutter project root and must match the folders
/// registered in `pubspec.yaml`. Reference them as:
/// `AppAssets.sfx.tap`, `AppAssets.music.menuLoop`, `AppAssets.icons.heart`.
final class AppAssets {
  const AppAssets._();

  static const Sfx sfx = Sfx();
  static const Music music = Music();
  static const Jingles jingles = Jingles();
  static const Icons icons = Icons();
  static const FontFamilies fonts = FontFamilies();
  static const Lottie lottie = Lottie();
}

/// Short one-shot sound effects (WAV, 16-bit PCM).
final class Sfx {
  const Sfx();

  final String tap = 'assets/audio/sfx/tap.wav';
  final String placeDie = 'assets/audio/sfx/place_die.wav';
  final String pickupDie = 'assets/audio/sfx/pickup_die.wav';
  final String invalid = 'assets/audio/sfx/invalid.wav';
  final String tileGreen = 'assets/audio/sfx/tile_green.wav';
  final String win = 'assets/audio/sfx/win.wav';
  final String lose = 'assets/audio/sfx/lose.wav';
  final String coin = 'assets/audio/sfx/coin.wav';
  final String heartLost = 'assets/audio/sfx/heart_lost.wav';
  final String heartRefill = 'assets/audio/sfx/heart_refill.wav';
  final String hint = 'assets/audio/sfx/hint.wav';
  final String undo = 'assets/audio/sfx/undo.wav';
  final String whoosh = 'assets/audio/sfx/whoosh.wav';
  final String toggle = 'assets/audio/sfx/toggle.wav';
  final String dialogOpen = 'assets/audio/sfx/dialog_open.wav';
  final String dialogClose = 'assets/audio/sfx/dialog_close.wav';
  final String rewardClaim = 'assets/audio/sfx/reward_claim.wav';
  final String diceRoll = 'assets/audio/sfx/dice_roll.wav';

  List<String> get all => [
        tap,
        placeDie,
        pickupDie,
        invalid,
        tileGreen,
        win,
        lose,
        coin,
        heartLost,
        heartRefill,
        hint,
        undo,
        whoosh,
        toggle,
        dialogOpen,
        dialogClose,
        rewardClaim,
        diceRoll,
      ];
}

/// Looping background tracks (MP3, 128 kbps).
final class Music {
  const Music();

  final String menuLoop = 'assets/audio/music/menu_loop.mp3';
  final String gameLoop = 'assets/audio/music/game_loop.mp3';
  final String gameLoopAlt = 'assets/audio/music/game_loop_alt.mp3';

  List<String> get all => [menuLoop, gameLoop, gameLoopAlt];
}

/// Short end-of-round / milestone stingers (MP3, 128 kbps).
final class Jingles {
  const Jingles();

  final String win = 'assets/audio/jingles/win_jingle.mp3';
  final String lose = 'assets/audio/jingles/lose_jingle.mp3';
  final String levelStart = 'assets/audio/jingles/level_start_jingle.mp3';
  final String reward = 'assets/audio/jingles/reward_jingle.mp3';

  List<String> get all => [win, lose, levelStart, reward];
}

/// Single-colour white icon glyphs, tinted at runtime.
final class Icons {
  const Icons();

  final String undo = 'assets/icons/undo.svg';
  final String restart = 'assets/icons/restart.svg';
  final String heart = 'assets/icons/heart.svg';

  final String trash = 'assets/icons/trash.png';
  final String settings = 'assets/icons/settings.png';
  final String home = 'assets/icons/home.png';
  final String soundOn = 'assets/icons/sound_on.png';
  final String soundOff = 'assets/icons/sound_off.png';
  final String musicOn = 'assets/icons/music_on.png';
  final String musicOff = 'assets/icons/music_off.png';
  final String coinOrStar = 'assets/icons/coin_or_star.png';
  final String lock = 'assets/icons/lock.png';
  final String check = 'assets/icons/check.png';
  final String close = 'assets/icons/close.png';
  final String shop = 'assets/icons/shop.png';
  final String pause = 'assets/icons/pause.png';
  final String trophy = 'assets/icons/trophy.png';
  final String info = 'assets/icons/info.png';
  final String plus = 'assets/icons/plus.png';
  final String arrowBack = 'assets/icons/arrow_back.png';

  List<String> get all => [
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
      ];
}

/// Font families declared in `pubspec.yaml`.
final class FontFamilies {
  const FontFamilies();

  final String fredoka = 'Fredoka';
  final String lilitaOne = 'LilitaOne';
}

/// Lottie animations (JSON) live in `assets/lottie/`;
/// entries to be added once the animations exist.
final class Lottie {
  const Lottie();

  // to be added
  // final String diceIdle = 'assets/lottie/dice_idle.json';
}
