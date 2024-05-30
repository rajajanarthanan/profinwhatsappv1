import 'package:flutter/material.dart';
import 'package:profinwhatsapp/core/views/base_widgets/base_widgets.dart';

class CustomKeyboard extends StatelessWidget {
  final String label;
  final void Function(String value) onPressed;

  const CustomKeyboard(
    this.label, {
    super.key,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Container(
          height: constraints.maxHeight,
          color: Colors.grey[300],
          child: BaseWidgets.proGridView(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              childAspectRatio:
                  (constraints.maxWidth / 3) / (constraints.maxHeight / 4),
            ),
            itemCount: 12,
            itemBuilder: (BuildContext context,  int index) {
              return _buildKey(index);
            },
          ),
        );
      },
    );
  }

  Widget _buildKey(int index) {
    String value;
    if (index < 9) {
      value = (index + 1).toString();
    } else if (index == 9) {
      value = '*';
    } else if (index == 10) {
      value = '0';
    } else {
      value = '#';
    }
    return GestureDetector(
      onTap: () {
        onPressed(value);
      },
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
            style: const TextStyle(fontSize: 24),
          ),
        ),
      ),
    );
  }
}
