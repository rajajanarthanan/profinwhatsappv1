// outlined_button.dart
import 'package:flutter/material.dart';

class CustomOutlinedButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const CustomOutlinedButton({
    required Key key,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed,
      child: Text(text),
    );
  }
}
