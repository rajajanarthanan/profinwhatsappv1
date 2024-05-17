// elevated_button.dart
import 'package:flutter/material.dart';

abstract class Pro_ElevatedButton extends StatelessWidget {
 // final String text;
  final VoidCallback onPressed;

 
 // static const Pro_ElevatedButton;
 
    //required Key key,
    //required this.text,
    //required this.onPressed,

  const ProElevatedButton({super.key, required this.text, required this.onPressed}) {
    
   key?key
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
  IconAlignment iconAlignment = IconAlignment.start,
})

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var key;
    var proElevatedButton5 = ProElevatedButton(
      //onPressed: onPressed,
      //child: Text(text),

       Key? key,
  required, text: 'null', 
   required Function()? onPressed,
  void Function()? onLongPress,
  void Function(bool)? onHover,
  void Function(bool)? onFocusChange,
  ButtonStyle? style,
  FocusNode? focusNode,
  bool autofocus = false,
  Clip? clipBehavior,
  WidgetStatesController? statesController,
  required Widget? child,
  IconAlignment iconAlignment = IconAlignment.start,
});
   
  }
}
