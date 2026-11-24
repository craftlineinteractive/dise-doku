import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'ui_feedback.dart';

/// The single feedback hook for the UI kit.
///
/// Override it in `ProviderScope(overrides: [...])` once the audio/haptics
/// service exists:
/// ```dart
/// uiFeedbackProvider.overrideWithValue(AudioHapticsFeedback(...))
/// ```
final Provider<UiFeedback> uiFeedbackProvider =
    Provider<UiFeedback>((ref) => const NoopUiFeedback());
