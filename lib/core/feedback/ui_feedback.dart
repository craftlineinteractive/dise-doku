/// Sound + haptic hook used by every interactive widget.
///
/// Widgets never talk to audio or haptics directly — they call
/// `ref.read(uiFeedbackProvider)`. A later prompt swaps the default no-op for
/// an implementation backed by `AppAssets.sfx` and platform haptics without
/// touching a single widget.
abstract interface class UiFeedback {
  void tap();
  void success();
  void error();
  void pop();
  void toggle();
  void dialogOpen();
  void dialogClose();
}

/// Default implementation: silently does nothing.
class NoopUiFeedback implements UiFeedback {
  const NoopUiFeedback();

  @override
  void tap() {}

  @override
  void success() {}

  @override
  void error() {}

  @override
  void pop() {}

  @override
  void toggle() {}

  @override
  void dialogOpen() {}

  @override
  void dialogClose() {}
}
