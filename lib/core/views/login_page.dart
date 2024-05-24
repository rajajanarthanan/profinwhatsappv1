import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:profinwhatsapp/core/views/widgets/login_widgets/login_widget.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My App'),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const LoginPage()), // Navigate to the login page
              );
            },
            child: const Text('Go to Login Page'),
          ),
        ),
      ),
    );
  }
}


