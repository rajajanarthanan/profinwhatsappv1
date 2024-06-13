import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:profinwhatsapp/core/views/base_widgets/base_widgets.dart';
import 'signup_widget.dart'; // Import the sign-up page
import 'forgot_password_widget.dart'; // Import the forgot password page
import 'package:profinwhatsapp/core/data/network/services/firebase_authentication.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});
  @override
  // ignore: library_private_types_in_public_api
  //_LoginPageState createState() => _LoginPageState();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Page'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: ProColumn(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FormBuilderTextField(
              decoration: const InputDecoration(labelText: 'Email'), name: '',
               ),
            FormBuilderTextField(
              decoration: InputDecoration(labelText: 'Password'), name: '',
              obscureText: true,
            ),
         /*   const SizedBox(height: 20),
            ProElevatedButton(
              onPressed: () {
                // Add login functionality here
              },
              child: const ProText('Login'),
            ),
            ProElevatedButton(
              onPressed: () {
                // Add Google login functionality here
              },
              child: const ProText('Login with Google'),
            ),
            ProElevatedButton(
              onPressed: () {
                // Add Facebook login functionality here
              },
              child: const ProText('Login with Facebook'),
            ),
            ProTextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ForgotPasswordPage()),
                );
              },
              child: const ProText('Forgot Password?'),
            ),
            ProTextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SignUpPage()),
                );
              },
              child: const ProText('Don\'t have an account? Sign Up'),
            ),*/
          ],
        ),
      ),
    );
  }
  
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }
  
}



/*class _LoginPageState extends State<LoginPage> {
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
  } */

