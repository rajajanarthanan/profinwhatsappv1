import 'package:flutter/material.dart';
import 'package:profinwhatsapp/core/views/base_widgets/base_widgets.dart';


import 'package:profinwhatsapp/core/views/widgets/login_widgets/login_widget.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const ProText('My App'),
        ),
        body: Center(
          child: ProElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const LoginPage()), // Navigate to the login page
              );
            },
            child: const ProText('Go to Login Page'),
          ),
        ),
      ),
    );
  }
}


