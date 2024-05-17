// elevated_button.dart
import 'package:flutter/material.dart';

class Pro_ElevatedButton extends StatelessWidget {
  Pro_ElevatedButton(
      {Key? prokey,
      required Text text,
      required void Function()? pro_onPressed,
      void Function()? onLongPress,
      void Function(bool)? onHover,
      void Function(bool)? onFocusChange,
      ButtonStyle? style,
      FocusNode? focusNode,
      bool autofocus = false,
      Clip? clipBehavior,
      WidgetStatesController? statesController,
      required Widget? child,
      IconAlignment iconAlignment = IconAlignment.start}) 

       @override
      Widget build(BuildContext context) {
      return ElevatedButton(
          // key = prokey,
          // child: text = text,
          onPressed = pro_onPressed,
          // onLongPress = onLongPress,
          // onHover = onHover,
          // onFocusChange = onFocusChange,
          // style: style = style,
          // focusNode: focusNode = focusNode,
          // autofocus: autofocus = autofocus,
          // clipBehavior: clipBehavior = clipBehavior,
          // statesController: statesController = statesController,
          // child = child,
          // iconAlignment: iconAlignment = iconAlignment);
    }

}
   
  

