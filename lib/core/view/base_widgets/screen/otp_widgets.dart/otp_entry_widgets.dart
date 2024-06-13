import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:profinwhatsapp/core/views/base_widgets/base_widgets.dart';
import 'package:profinwhatsapp/core/view/base_widgets/screen/otp_widgets.dart/keyboard_widgets.dart';


class OtpEntryScreen extends StatelessWidget {

  const OtpEntryScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const ProText(''),
      ),
          body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0), 
           child: ProColumn(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [

            const SizedBox(height: 25),
             const ProText(
              'OTP Verification',
              style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold,),
              textAlign: TextAlign.start,
              ),

            const SizedBox(height: 8),
             const ProText(
              'Enter the OTP sent to +9187567****6',
              style: TextStyle(fontSize: 15.0,),
              textAlign: TextAlign.start,
            ),

            const SizedBox(height: 50),
            ProRow(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: List.generate(
                6,
                (index) => Flexible(
                  child: SizedBox(
                    width: 70,
                    child: ProContainer(
                      decoration: BoxDecoration(
                        border: Border.all(width: 1, color: Colors.black),
                        borderRadius: BorderRadius.circular(13),
                      ),
                      color: Colors.white,
                      child: FormBuilderTextField(
                        key: Key('otpField_$index'), // Add keys to the text fields
                        style: Theme.of(context).textTheme.headlineMedium,
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        maxLength: 1,
                        decoration: const InputDecoration(
                          counterText: '',
                          border: InputBorder.none,
                        ),
                        onChanged: (value) {}, name: '',
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 70),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.50,
              height: MediaQuery.of(context).size.height * 0.40,
              child: CustomKeyboard(
                onPressed: (value) {
                  // Handle keyboard input
                },
                label: '',
              ),
            ),
          ],
        ),
      ),
    ),);
     
  }
}

