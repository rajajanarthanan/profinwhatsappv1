// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:profinwhatsapp/core/dependencies/injector.dart';
import 'package:profinwhatsapp/core/view/base_widgets/screen/otp_entry_widgets.dart';

// import 'package:profinwhatsapp/main.dart';
import 'package:profinwhatsapp/core/views/test_view.dart';
 import 'package:flutter_test/flutter_test.dart';
 import 'package:profinwhatsapp/core/view/base_widgets/keyboard_widgets.dart';

void main() {
  setUpAll(() {
    setupInjector();
  });
 
  
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(TestView());

    // Verify that our counter starts at 0.
    // expect(find.text('0'), findsOneWidget);
    // expect(find.text('1'), findsNothing);

    // Tap the '+' icon and trigger a frame.
    // await tester.tap(find.byIcon(Icons.add));
    // await tester.pump();

    // // Verify that our counter has incremented.
    // expect(find.text('0'), findsNothing);
    // expect(find.text('1'), findsOneWidget);
 } );



  testWidgets('OTP Entry Test', (WidgetTester tester) async {
    // Define a test key for the scaffold to make it easier to find during testing
    const testKey = Key('otpEntryWidget');

    // Build the widget tree with the OTP entry widget
    await tester.pumpWidget(
     const  MaterialApp(
        home: Scaffold(
          key: testKey,
          body: MyKeyboard(), // Use your actual OTP entry widget here
        ),
      ),
    );

    // Verify that the OTP entry text fields are present
    expect(find.byType(TextField), findsNWidgets(6));

    // Enter OTP using the custom keyboard
    for (int i = 0; i < 6; i++) {
      await tester.enterText(find.byType(TextField).at(i), '$i');
    }

    // Tap the custom keyboard buttons
    for (int i = 0; i < 6; i++) {
      await tester.tap(find.text('$i'));
      await tester.pump();
    }

    // Verify the entered OTP
    for (int i = 0; i < 6; i++) {
      expect(find.text('$i'), findsOneWidget);
    }

    // Tap the submit button
    await tester.tap(find.text('✓'));
    await tester.pump();

    // Optionally, add more assertions or verifications after the button tap
  });
}
 
 




 



  


 
