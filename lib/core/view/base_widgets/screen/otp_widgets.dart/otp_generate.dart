import 'dart:math';

String generateOTP(bool isTrue) {
  final random = Random();
  final length = isTrue ? 6 : 5; // Determine length based on true/false
  final otp = StringBuffer();

  for (int i = 0; i < length; i++) {
    otp.write(random.nextInt(10)); // Generates a random digit (0-9)
  }

  return otp.toString();
}
