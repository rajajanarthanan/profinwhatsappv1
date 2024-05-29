// lib/keyboard_widget.dart
import 'package:flutter/material.dart';

class CustomKeyboard extends StatelessWidget {
  final Function(String) onKeyPressed;

  const CustomKeyboard(String? label, {
    required this.onKeyPressed,
    required void Function(String? value) onPressed});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Container(
          height: constraints.maxHeight,
          color: Colors.grey[300],
          child: GridView.count(
            crossAxisCount: 3,
            childAspectRatio: (constraints.maxWidth / 3) / (constraints.maxHeight / 4),
            children: [
              _buildKey('1'),
              _buildKey('2'),
              _buildKey('3'),
              _buildKey('4'),
              _buildKey('5'),
              _buildKey('6'),
              _buildKey('7'),
              _buildKey('8'),
              _buildKey('9'),
              _buildKey('*'),
              _buildKey('0'),
              _buildKey('#'),
            ],
          ),
        );
      },
    );
  }

  Widget _buildKey(String value) {
    return GestureDetector(
      onTap: () => onKeyPressed(value),
      child: Container(
        margin: const EdgeInsets.all(4),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.black),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: Text(
            value,
            style: const  TextStyle(fontSize: 24),
          ),
        ),
      ),
    );
  }


 
  }


