class SingleEvent<T> {
  T _content;
  bool _hasBeenHandled = false;

  SingleEvent(this._content);

  /// Returns the content if it hasn't been handled yet,
  /// otherwise returns null.
  T? getContentIfNotHandled() {
    if (_hasBeenHandled) {
      return null;
    } else {
      _hasBeenHandled = true;
      return _content;
    }
  }

  /// Returns the content, even if it's already been handled.
  T peekContent() => _content;
}
