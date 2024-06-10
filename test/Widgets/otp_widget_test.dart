import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:profinwhatsapp/core/view/base_widgets/keyboard_widgets.dart';
import 'package:profinwhatsapp/core/view/base_widgets/screen/otp_entry_widgets.dart';


void main() {
 testWidgets('OTP Entry Screen Widget Test', (WidgetTester tester) async {
    // Build the widget under test
    await tester.pumpWidget(
      const MaterialApp(
      home: Scaffold(
        body: OtpEntryScreen(),
      ),
    ));

       
  
     // Verify the entered OTP
       for (int i = 0; i < 6; i++) {
        expect(find.text('$i'), findsOneWidget);
      }
      
    
     // Verify that the instruction text widget is present
    expect(
        find.text('Enter the OTP sent to +9187567****6'), findsOneWidget);

    
    // Verify that the OTP entry text fields are present
    expect(find.byType(TextField), findsNWidgets(6));


    // Verify that the custom keyboard widget is present
    expect(find.byType(CustomKeyboard), findsOneWidget);

    // Tap the submit button
    await tester.tap(find.byKey(Key('keyboard_✓')));
    await tester.pump();
    
   });
}
     
 