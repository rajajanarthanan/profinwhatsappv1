
import 'package:flutter/material.dart';
import 'package:profinwhatsapp/core/views/base_widgets/base_widgets.dart';


class OtpRegex extends StatelessWidget {
  const OtpRegex({super.key});

  // Regular expression pattern for valid OTP input (6 digits)
  static final RegExp _otpRegex = RegExp(r'^[0-9]{6}$');

  // Getter method to access the regex
  static RegExp get otpRegex => _otpRegex;

  @override
  Widget build(BuildContext context) {
    return ProContainer(color: Colors.white,);
  }
}
