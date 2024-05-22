import 'package:flutter/material.dart';
import 'signup_widget.dart'; // Import the sign-up page
import 'forgot_password_widget.dart'; // Import the forgot password page
import 'package:profinwhatsapp/core/data/network/services/firebase_authentication.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});
  @override
  _LoginPageState createState() => _LoginPageState();

/*
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Page'),
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
                // Add login functionality here
              },
              child: const Text('Login'),
            ),
            ElevatedButton(
              onPressed: () {
                // Add Google login functionality here
              },
              child: const Text('Login with Google'),
            ),
            ElevatedButton(
              onPressed: () {
                // Add Facebook login functionality here
              },
              child: const Text('Login with Facebook'),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ForgotPasswordPage()),
                );
              },
              child: const Text('Forgot Password?'),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SignUpPage()),
                );
              },
              child: const Text('Don\'t have an account? Sign Up'),
            ),
          ],
        ),
      ),
    );
  }
  */
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Authentication"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: emailController,
              decoration: const InputDecoration(labelText: 'Email'),
            ),
            TextField(
              controller: passwordController,
              decoration: const InputDecoration(labelText: 'Password'),
              obscureText: true,
            ),
            ElevatedButton(
              onPressed: () async {
                User? user = await signInWithEmailAndPassword(
                  emailController.text,
                  passwordController.text,
                );
                if (user != null) {
                  // Successfully signed in
                  print("Signed in: ${user.email}");
                }
              },
              child: const Text("Sign In"),
            ),
            ElevatedButton(
              onPressed: () async {
                User? user = await signUpWithEmailAndPassword(
                  emailController.text,
                  passwordController.text,
                );
                if (user != null) {
                  // Successfully signed up
                  print("Signed up: ${user.email}");
                }
              },
              child: const Text("Sign Up"),
            ),
            ElevatedButton(
              onPressed: () async {
                await resetPassword(emailController.text);
                // Password reset email sent
                print("Password reset email sent");
              },
              child: const Text("Reset Password"),
            ),
            ElevatedButton(
              onPressed: () async {
                User? user = await signInWithGoogle();
                if (user != null) {
                  // Successfully signed in with Google
                  print("Signed in with Google: ${user.email}");
                }
              },
              child: const Text("Sign In with Google"),
            ),
            ElevatedButton(
              onPressed: () async {
                User? user = await signInWithFacebook();
                if (user != null) {
                  // Successfully signed in with Facebook
                  print("Signed in with Facebook: ${user.email}");
                }
              },
              child: const Text("Sign In with Facebook"),
            ),
          ],
        ),
      ),
    );
  }
}
