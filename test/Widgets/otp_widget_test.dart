import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:profinwhatsapp/core/dependencies/injector.dart';
import 'package:profinwhatsapp/core/view/base_widgets/screen/otp_entry_widgets.dart';
import 'package:profinwhatsapp/core/views/test_view.dart';
import 'package:profinwhatsapp/core/view/base_widgets/keyboard_widgets.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  setUpAll(() {
    setupInjector();
  });

  testWidgets('OTP Entry Test', (WidgetTester tester) async {
    // Define a test key for the scaffold to make it easier to find during testing
    const testKey = Key('otpEntryWidget');

    // Build the widget tree with the OTP entry widget
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          key: testKey,
          body: MyKeyboard(), // Use your actual OTP entry widget here
        ),
      ),
    );

    // Verify that the OTP entry text fields are present
    expect(find.byType(TextField), findsNWidgets(6));

    // Enter OTP using the custom keyboard
    print('Entering OTP');
    for (int i = 0; i < 6; i++) {
      await tester.enterText(find.byType(TextField).at(i), '$i');
      print('Entered $i');
    }

    // Tap the custom keyboard buttons
    print('Tapping Custom Keyboard Buttons');
    for (int i = 0; i < 6; i++) {
      await tester.tap(find.text('$i'));
      await tester.pump();
      print('Tapped $i');
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
