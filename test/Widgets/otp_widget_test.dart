import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:profinwhatsapp/core/view/base_widgets/screen/otp_widgets.dart/keyboard_widgets.dart';
import 'package:profinwhatsapp/core/view/base_widgets/screen/otp_widgets.dart/otp_entry_widgets.dart';
//import 'package:profinwhatsapp/core/view/base_widgets/screen/otp_widgets.dart/otp_generate.dart';
//import 'package:profinwhatsapp/core/view/base_widgets/screen/otp_widgets.dart/random_otp.dart';
//import 'package:profinwhatsapp/core/view/base_widgets/screen/otp_widgets.dart/otp_validator.dart';


void main() {
   group('OTP Entry Screen Tests', () {
  testWidgets('Frontend View Test', (WidgetTester tester) async {
    // Build the widget under test
    await tester.pumpWidget(
      const MaterialApp(
      home: Scaffold(
        body:  OtpEntryScreen(),
      ),
    ));

       
   // Verify that the OTP entry text fields are present
    expect(find.byType(TextField), findsNWidgets(6));


    // Verify that the custom keyboard widget is present
    expect(find.byType(CustomKeyboard), findsOneWidget);


    // Verify that the instruction text widget is present
    expect(
        find.text('Enter the OTP sent to +9187567****6'), findsOneWidget);
    

    // Verify the entered OTP
       for (int i = 0; i < 6; i++) {
        expect(find.text('$i'), findsOneWidget);
      }

      
    // Enter OTP using the custom keyboard
    for (int i = 0; i < 6; i++) {
      await tester.enterText(find.byType(TextField).at(i), '$i');
    }

    // Tap the submit button
    await tester.tap(find.byKey(const Key('keyboard_✓')));
    await tester.pump();

    //simulate OnTap
    await tester.tap(find.byKey( const Key('keyboard_1')));
    await tester.pump();
  
    // verify onTap behavior
    // adds your assertion here

    //reset the widget tree
    await tester.pumpAndSettle();

    // simulate on DoubleTap
    await tester.tap(find.byKey(const Key('keyboard_1'))); //first tap
    await tester.tap(find.byKey(const Key('keyboard_2'))); // second tap
    await tester.pump();

    // verify DoubleTap behavior
    // adds your assertion here
  
     });
    }); 
  
   
 
// Regular expression pattern for valid OTP input (6 digits)
final RegExp otpRegex = RegExp(r'^[0-9]{6}$');


  group('OTP Validation Test', () {
    test('Valid numeric input', () {
      const input = '123456';
      expect(otpRegex.hasMatch(input), isTrue);
    });

    test('Invalid non-numeric input', () {
      const  input = '12ab34';
      expect(otpRegex.hasMatch(input), isFalse);
    });

    test('Empty input', () {
      const input = '';
      expect(otpRegex.hasMatch(input), isFalse);
    });

    test('Null input', () {
      const  input = null;
      expect(otpRegex.hasMatch(input ?? ''), isFalse);
    });
  });  
}


  



 

 
   
   
  

      
    









