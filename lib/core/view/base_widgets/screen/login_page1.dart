import 'dart:ui';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:profinwhatsapp/core/views/base_widgets/base_widgets.dart';

class MyLoginPage extends StatelessWidget {
  const MyLoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Enter OTP"),
      ),
      body: Center(
        child: BaseWidgets.proColumn(
          children: [
            BaseWidgets.proTextField(
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                labelText: 'Email',
                hintText: 'Enter email',
                prefixIcon: Icon(Icons.email),
                border: OutlineInputBorder(),
              ),
                 maxLengthEnforcement: null,
                  inputFormatters: null,
                  cursorHeight: 20.0,
                  selectionHeightStyle: BoxHeightStyle.includeLineSpacingTop,
                  selectionWidthStyle: BoxWidthStyle.max,
                  dragStartBehavior: DragStartBehavior.down,
                  onChanged: (value) {
                    // No return type required for onChanged callback
                  },
                  validator: (value) {},
               ),
            const SizedBox(height: 30),
            BaseWidgets.proTextField(
              keyboardType: TextInputType.visiblePassword,
              decoration: const InputDecoration(
                labelText: 'Password',
                hintText: 'Enter Password',
                prefixIcon: Icon(Icons.password),
                border: OutlineInputBorder(),
              ),
              maxLengthEnforcement: null,
                  inputFormatters: null,
                  cursorHeight: 20.0,
                  selectionHeightStyle: BoxHeightStyle.includeLineSpacingTop,
                  selectionWidthStyle: BoxWidthStyle.max,
                  dragStartBehavior: DragStartBehavior.down,
                  onChanged: (value) {
                    // No return type required for onChanged callback
                  },
                  validator: (value) {},
               ),
            const SizedBox(height: 30),
            BaseWidgets.proElevatedButton(
              onPressed: () {},
              child: const Text("Login"),
            ),
          ]
      ),
    ),
  );
  }
}   
           