import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:profinwhatsapp/core/view/base_widgets/keyboard_widgets.dart';
import 'package:profinwhatsapp/core/view/base_widgets/screen/otp_entry_widgets.dart';


void main() {
   group('OTP Entry Screen Tests', () {
  testWidgets('Frontend View Test', (WidgetTester tester) async {
    // Build the widget under test
    await tester.pumpWidget(
      const MaterialApp(
      home: Scaffold(
        body: OtpEntryScreen(),
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

   // enter 9-digit OTP and verify
    await tester.enterText(find.byKey(const Key('otpField')),'123456789');
    await tester.pump();
    expect(find.text('Invalid'),findsOneWidget,reason:'9 digits should be invalid' );

    /* // enter 10-digit OTP and verify
     await tester.enterText(find. byKey(const Key('otpField')),'1234567890');
     await tester.pump();
     expect(find.text('valid'),findsOneWidget,reason:'10 digits should be valid');

     // enter 11-digit OTP and verify
     await tester.enterText(find.byKey(const Key('otpfield')),'12345678901');
     await tester.pump();
     expect(find.text('invalid'),findsOneWidget,reason:'11 digits should be invalid' );
     */

    
     // Enter 12-digit OTP and verify
     await tester.enterText(find.byKey(const Key('otpfield')),'123456789012');
     await tester.pump();
     expect(find.text('invalid'),findsOneWidget,reason:'12 digits should be invalid');
     
     //enter 13-digit OTP and verify 
     await tester.enterText(find.byKey(const Key('otpfield')),'1234567890123');
     await tester.pump();
     expect(find.text('invalid'),findsOneWidget,reason:'13 digit should be invalid');                          
      
    });
  });
}

   
   




     


