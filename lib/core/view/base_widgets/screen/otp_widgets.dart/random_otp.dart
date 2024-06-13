import 'package:flutter/material.dart';
import 'package:profinwhatsapp/core/views/base_widgets/base_widgets.dart';

class RandomOtpEntryScreen extends StatelessWidget {
  final String trueOTP;
  final String falseOTP;

  const RandomOtpEntryScreen({
    super.key,
    required this.trueOTP,
    required this.falseOTP,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Random OTP Entry'),
      ),
      body: Center(
        child: ProColumn(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ProText(
              'True OTP: $trueOTP',
              style: const TextStyle(fontSize: 24),
            ),
            ProText(
              'False OTP: $falseOTP',
              style: const TextStyle(fontSize: 24),
            ),
          ],
        ),
      ),
    );
  }
}


