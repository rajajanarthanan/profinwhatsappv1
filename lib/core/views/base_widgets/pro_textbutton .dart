// text_button.dart
import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const CustomTextButton({
    required Key key,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextButton
          (style: TextButton.styleFrom(
            textStyle: TextStyle(fontSize: 20),
          ),
          onPressed: null,
          child: Text('disable'),
          
        ],
      )
      onPressed: onPressed,
      child: Text(text),
    );
  }
}
