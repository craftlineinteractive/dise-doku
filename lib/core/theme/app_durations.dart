/// Animation durations (milliseconds). No widget hard-codes a duration.
abstract final class AppDurations {
  static const Duration instant = Duration(milliseconds: 90);
  static const Duration fast = Duration(milliseconds: 140);
  static const Duration base = Duration(milliseconds: 180);
  static const Duration medium = Duration(milliseconds: 240);
  static const Duration page = Duration(milliseconds: 280);
  static const Duration slow = Duration(milliseconds: 320);
  static const Duration dialog = Duration(milliseconds: 300);
  static const Duration toast = Duration(milliseconds: 260);
  static const Duration toastVisible = Duration(milliseconds: 2200);
  static const Duration sheet = Duration(milliseconds: 320);

  /// One full drift cycle of the background bokeh.
  static const Duration backgroundDrift = Duration(seconds: 14);
  static const Duration pulse = Duration(milliseconds: 900);
  static const Duration count = Duration(milliseconds: 450);
}
