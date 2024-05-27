  import 'package:flutter/material.dart';
import 'package:flutter/material.dart';    
    import 'package:profinwhatsapp/core/views/widgets/login_widgets/login_widget.dart';

class SignUpPage extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign Up'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const TextField(
              decoration: InputDecoration(labelText: 'Email'),
            ),
            const TextField(
              decoration: InputDecoration(labelText: 'Password'),
              obscureText: true,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/loginview');
                 },
                 child: const Text("GoToApp")),
          ]
        ),
            ),
          
        );
      
    
  }
}
