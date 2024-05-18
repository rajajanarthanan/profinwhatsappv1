/*
// elevated_button.dart

// TODO:
// extend base_widgets for widgets
// extend widgets for base_view
// text each view from base_view

import 'package:flutter/material.dart';

class base_Widgets {
  // base_Widgets();

//member 1
  ElevatedButton Pro_ElevatedButton(
      {required void Function()? onPressed,
      void Function()? onLongPress,
      void Function(bool)? onHover,
      void Function(bool)? onFocusChange,
      ButtonStyle? style,
      FocusNode? focusNode,
      bool autofocus = false,
      Clip? clipBehavior,
      WidgetStatesController? statesController,
      required Widget? child,
      IconAlignment iconAlignment = IconAlignment.start}) {
    return ElevatedButton(
        onPressed: onPressed,
        onLongPress: onLongPress,
        onHover: onHover,
        onFocusChange: onFocusChange,
        style: style,
        focusNode: focusNode,
        autofocus: autofocus,
        clipBehavior: clipBehavior,
        statesController: statesController,
        iconAlignment: iconAlignment,
        child: child);
  }

//mem 2
  TextButton Pro_TextButton({
    required onPressed,
    void Function()? onLongPress,
    void Function(bool)? onHover,
    void Function(bool)? onFocusChange,
    ButtonStyle? style,
    FocusNode? focusNode,
    bool autofocus = false,
    Clip? clipBehavior,
    WidgetStatesController? statesController,
    bool? isSemanticButton = true,
    required Widget child,
    IconAlignment iconAlignment = IconAlignment.start,
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
        statesController: statesController,
        isSemanticButton: isSemanticButton,
        child: child,
        iconAlignment: iconAlignment);
  }
}
*/

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
      style: style ?? _defaultElevatedButtonStyle(),
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
}
