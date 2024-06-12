
import 'package:flutter/material.dart';

class OtpRegex extends StatelessWidget {
  const OtpRegex({Key? key}) : super(key: key);

  // Regular expression pattern for valid OTP input (6 digits)
  static final RegExp _otpRegex = RegExp(r'^[0-9]{6}$');

  // Getter method to access the regex
  static RegExp get otpRegex => _otpRegex;

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
