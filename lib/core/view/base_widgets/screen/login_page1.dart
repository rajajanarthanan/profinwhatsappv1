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
        child: Column(
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
            BaseWidgets.proText(
              data: 'Sign Up',
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 50),
            BaseWidgets.proTextField(
              keyboardType: TextInputType.name,
              decoration: const InputDecoration(
                labelText: 'User Name',
                hintText: 'Enter User Name',
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
              
            const SizedBox(height: 40),
            BaseWidgets.proTextField(
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                labelText: 'Email',
                hintText: 'Enter Email Address',
                border: OutlineInputBorder(),
              ),maxLengthEnforcement: null,
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
              
            const SizedBox(height: 40),
            BaseWidgets.proTextField(
              keyboardType: TextInputType.visiblePassword,
              decoration: const InputDecoration(
                labelText: 'Password',
                hintText: 'Enter Password',
                border: OutlineInputBorder(),
              ),maxLengthEnforcement: null,
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
            
            const SizedBox(height: 10),
            BaseWidgets.proTextButton(
              onPressed: () {
                // add reset password functionality here...
              },
              child: const Text(
                'Forget Password?',
              ),  textAlign: TextAlign.justify,
                  textDirection: TextDirection.ltr,
            ),
            const SizedBox(height: 20),
            BaseWidgets.proElevatedButton(
              onPressed: () {
                // add submit button here
              },
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
              child: const Text('Continue'),
            ),
            const SizedBox(height: 30),
            BaseWidgets.prolinearProgressIndicator(
              value: 0.1,
              backgroundColor: Colors.black,
              color: Colors.black,
              semanticsLabel: 'loading...',
            ),
            const SizedBox(height: 10),
            BaseWidgets.proText(
              data: 'or',
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 30),
            BaseWidgets.proElevatedButton(
              onPressed: () {
                // Add Google login functionality here
              },
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                padding: const EdgeInsets.symmetric(
                    vertical: 8.0, horizontal: 12.0),
                textStyle: const TextStyle(
                    fontSize: 16, fontWeight: FontWeight.bold),
                elevation: 5,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/google_logo.png',
                    height: 50,
                    width: 50,
                  ),
                  const SizedBox(width: 10),
                  const Text('Login with Google')
                ],
              ),
            ),
            BaseWidgets.proElevatedButton(
              onPressed: () {
                // Add Facebook login functionality here
              },
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                padding: const EdgeInsets.symmetric(
                    vertical: 8.0, horizontal: 12.0),
                textStyle: const TextStyle(
                    fontSize: 16, fontWeight: FontWeight.bold),
                elevation: 5,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/facebook_logo.png',
                    height: 50,
                    width: 50,
                  ),
                  const Text('Login with Facebook'),
                ],
              ),
            ),
            const SizedBox(height: 20),
            BaseWidgets.proText(
              data: 'Already have an account?',
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 15),
            ),
          ],
        ),
      ),
    );
  }
}
