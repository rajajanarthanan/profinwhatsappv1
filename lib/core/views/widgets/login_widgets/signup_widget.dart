  import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:profinwhatsapp/core/views/base_widgets/base_widgets.dart';   
    import 'package:profinwhatsapp/core/views/widgets/login_widgets/login_widget.dart';

class SignUpPage extends StatelessWidget {
 const  SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign Up'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ProColumn(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           FormBuilderTextField(
              decoration: const InputDecoration(labelText: 'Email'),name: '',
            ),
           FormBuilderTextField(
              decoration: const InputDecoration(labelText: 'Password'),name: '',
              obscureText: true,
            ),
            const SizedBox(height: 20),
            ProElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/loginview');
                 },
                 child: const ProText("GoToApp")),
              ],
            ),
        ),
          
        );
      
    
  }
}
