import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:profinwhatsapp/core/views/base_widgets/base_widgets.dart';

class ForgotPasswordPage extends StatelessWidget {
 const  ForgotPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const ProText('Forgot Password'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ProColumn(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ProTextField(
              decoration:const  InputDecoration(labelText: 'Email'),
              name: '',
            ),
          const   SizedBox(height: 20),
            ProElevatedButton(
              onPressed: () {
                // Add forgot password functionality here
              },
              child: const ProText('Reset Password'),
            ),
          ],
        ),
      ),
    );
  }
}
