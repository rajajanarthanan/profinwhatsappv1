// elevated_button.dart
// text_button.dart
//loading_button.dart

// TODO:
// extend base_widgets for widgets
// extend widgets for base_view
// text each view from base_view

// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class BaseWidgets {
  static ElevatedButton proElevatedButton({
    required void Function()? onPressed,
    void Function()? onLongPress,
    void Function(bool)? onHover,
    void Function(bool)? onFocusChange,
    ButtonStyle? style,
    FocusNode? focusNode,
    bool autofocus = false,
    Clip clipBehavior = Clip.none,
    required Widget child,
  }) {
    return ElevatedButton(
      onPressed: onPressed,
      onLongPress: onLongPress,
      onHover: onHover,
      onFocusChange: onFocusChange,
      style: style,
      focusNode: focusNode,
      autofocus: autofocus,
      clipBehavior: clipBehavior,
      child: child,
    );
  }

  static TextButton proTextButton({
    required void Function()? onPressed,
    void Function()? onLongPress,
    void Function(bool)? onHover,
    void Function(bool)? onFocusChange,
    ButtonStyle? style,
    FocusNode? focusNode,
    bool autofocus = false,
    Clip clipBehavior = Clip.none,
    required Widget child,
  }) {
    return TextButton(
      onPressed: onPressed,
      onLongPress: onLongPress,
      onHover: onHover,
      onFocusChange: onFocusChange,
      style: style,
      focusNode: focusNode,
      autofocus: autofocus,
      clipBehavior: clipBehavior,
      child: child,
    );
  }

  // Method to create a LoadingButton
  static ElevatedButton proLoadingButton({
    required VoidCallback onPressed,
    required bool isLoading,
    required Widget child,
    Widget loadingWidget = const CircularProgressIndicator(),
    ButtonStyle? style,
    FocusNode? focusNode,
    bool autofocus = false,
    Clip clipBehavior = Clip.none,
    void Function()? onLongPress,
    void Function(bool)? onHover,
    void Function(bool)? onFocusChange,
  }) {
    return ElevatedButton(
      onPressed: isLoading ? null : onPressed,
      onLongPress: onLongPress,
      onHover: onHover,
      onFocusChange: onFocusChange,
      style: style,
      focusNode: focusNode,
      autofocus: autofocus,
      clipBehavior: clipBehavior,
      child: isLoading ? loadingWidget : child,
    );
  }
}

// Method to create a AsyncButton
TextButton proAsyncButton({
  required VoidCallback onPressed,
  required String text,
}) {
  return TextButton(
    onPressed: onPressed,
    child: Text(text),
  );
}
