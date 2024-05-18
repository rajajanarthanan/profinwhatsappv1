// text_buton.dart

// TODO:
// extend base_widgets for widgets

import 'package:flutter/material.dart';

class base_widgets{

base_widgets();
  

 pro_TextButton ({

  Key? key,
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
           
            onHover : onHover,
            onFocusChange :onFocusChange,
             style : style,
              focusNode : focusNode,
              autofocus :autofocus,
              clipBehavior :clipBehavior ,
              child: child,);
}
  
}
