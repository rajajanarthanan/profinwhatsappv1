import 'dart:ui';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:profinwhatsapp/core/views/base_widgets/base_widgets.dart';

class MyLoginPage extends StatelessWidget {
  const MyLoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const ProText("Enter OTP"),
      ),
      body: Center(
        child: ProColumn(
          children: [
            const SizedBox(height:50),
            ProTextField(
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                labelText: 'Email',
                hintText: 'Enter email',
                prefixIcon: Icon(Icons.email),
                border: OutlineInputBorder(),
              ),
                 name: '',
                 maxLengthEnforcement: null,
                  inputFormatters: null,
                  cursorHeight: 20.0,
                  selectionHeightStyle: BoxHeightStyle.includeLineSpacingTop,
                  selectionWidthStyle: BoxWidthStyle.max,
                  dragStartBehavior: DragStartBehavior.down,
                  onChanged: (value) {
                    // No return type required for onChanged callback
                  },
                  validator: (value) {
                    return null;
                  },
               ),
            const SizedBox(height: 50),
              ProTextField(
              keyboardType: TextInputType.visiblePassword,
              decoration: const InputDecoration(
                labelText: 'Password',
                hintText: 'Enter Password',
                prefixIcon: Icon(Icons.password),
                border: OutlineInputBorder(),
              ),
                  name: '',
                  maxLengthEnforcement: null,
                  inputFormatters: null,
                  cursorHeight: 20.0,
                  selectionHeightStyle: BoxHeightStyle.includeLineSpacingTop,
                  selectionWidthStyle: BoxWidthStyle.max,
                  dragStartBehavior: DragStartBehavior.down,
                  onChanged: (value) {
                    // No return type required for onChanged callback
                  },
                  validator: (value) {
                    return null;
                  }, 
                 ),

               const SizedBox(height: 20),
                ProTextButton(
                  onPressed: () {
                // add reset password functionality here...
                 },
                 child: const  ProText(
                        'Forget Password?' ),
                 ),


                const SizedBox(height: 20),
                ProElevatedButton(
                     onPressed: () {
                // add submit button here
                  },
                 style: ElevatedButton.styleFrom(
                   shape: RoundedRectangleBorder(
                     borderRadius: BorderRadius.circular(8.0),
                  ),
                 ),
                  child: const ProText('login'),
                    ),

              const SizedBox(height: 60),
              const  ProLinearProgressIndicator(
              value: 0.1,
              backgroundColor: Colors.black,
              color: Colors.black,
              semanticsLabel: 'loading...',
            ),

            const SizedBox(height: 10),
            const  ProText(
               'or',
              textAlign: TextAlign.center,
              style:  TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 30),
            ProElevatedButton(
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

              child: ProRow(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/google_logo.png',
                    height: 50,
                    width: 50,
                  ),
                  const SizedBox(width: 10),
                  const ProText('Login with Google')
                ],
              ),
            ),
             
             const SizedBox(height:30),
             ProElevatedButton(
              onPressed: () {
                // Add Facebook login functionality here
              },
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                padding: const EdgeInsets.symmetric(
                    vertical: 8.0, horizontal: 8.0),
                textStyle: const TextStyle(
                    fontSize: 16, fontWeight: FontWeight.bold),
                elevation: 5,
              ),

              child: ProRow(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/facebook_logo.png',
                    height: 50,
                    width: 50,
                  ),
                  const ProText('Login with Facebook'),
                ],
              ),
            ),

        ],
      ),
    ),
  );
  }
}   
           