// elevated_button.dart

// TODO:
// extend base_widgets for widgets
// extend widgets for base_view
// text each view from base_view


import 'package:flutter/material.dart';

class Base_Widgets {

  Base_Widgets();

  ElevatedButton Pro_ElevatedButton({
      required void Function()? onPressed,
      void Function()? onLongPress,
      void Function(bool)? onHover,
      void Function(bool)? onFocusChange,
      ButtonStyle? style,
      FocusNode? focusNode,
      bool autofocus = false,
      Clip? clipBehavior,
      WidgetStatesController? statesController,
      required Widget? child,
      IconAlignment iconAlignment = IconAlignment.start
      }){
          return ElevatedButton(
                  onPressed : onPressed,
                  onLongPress : onLongPress,
                  onHover : onHover,
                  onFocusChange : onFocusChange,
                  style: style,
                  focusNode: focusNode,
                  autofocus: autofocus,
                  clipBehavior: clipBehavior,
                  statesController: statesController,
                  iconAlignment: iconAlignment,
                  child: child);      
      }

  Pro_TextButton({required onPressed, required Text child}) {}
}