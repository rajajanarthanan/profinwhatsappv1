/*import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

import 'package:profinwhatsapp/core/views/base_widgets/base_widgets.dart';
import 'package:profinwhatsapp/core/view/base_widgets/screen/otp_widgets.dart/keyboard_widgets.dart';
class MyKeyboard extends StatelessWidget {
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body : Center(
            child:Padding(
              padding: const EdgeInsets.all(16.0),
              child:Center(
                 child : LayoutBuilder(
                 builder: (context, constraints) {
                 return ConstrainedBox(
                  constraints:  const BoxConstraints(maxWidth: 400),
                 child: ProContainer(
                  padding: const EdgeInsets.all(8.0),
                 decoration: BoxDecoration(
                 color : Colors.white,
                 border: Border.all(color: Colors.grey),
                 borderRadius: BorderRadius.circular(8.0),
                 ),
                 color: Colors.white,
                 child: SingleChildScrollView(
                 child : Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children :[
                const SizedBox(height: 45),
              const  ProText(
                    'OTP',
                   style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                   textAlign: TextAlign.start,
                   ),

                const SizedBox(height:8),
              const  ProText(
                   'Verification',
                  style: const TextStyle(fontSize:35,fontWeight:FontWeight.bold),
                  textAlign:TextAlign.start,
                 ),

                const SizedBox(height: 10),
               const  ProText(
                   'Enter the OTP sent to +9187567****6',
                    style:const TextStyle(fontSize:15,),
                    textAlign: TextAlign.start,
                  ),
                const SizedBox(height: 50),
                 ProRow(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                     children: List.generate(
                       6,
                     (index) => Flexible(
                      child: SizedBox(
                         width: 50,
                         child: Container(
                           decoration: BoxDecoration(
                              border:Border.all(width:1,color:Colors.black,),
                              borderRadius: BorderRadius.circular(8),
                             ),
                    
                      child: FormBuilderTextField(
                          style: Theme.of(context).textTheme.headlineMedium,
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                           maxLength: 1,
                          decoration: const InputDecoration(
                          counterText: '',
                          border: InputBorder.none
                          ),
                            maxLengthEnforcement: null,
                            inputFormatters: null, 
                            selectionHeightStyle: BoxHeightStyle.max,
                            selectionWidthStyle: BoxWidthStyle.max, 
                            dragStartBehavior: DragStartBehavior.start,
                            onChanged: (value) {},
                            validator: (value) {}, name: '',
                           ),
                          ),
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height:150), // Add some spacing between the rows
                  SizedBox(
                    width: MediaQuery.sizeOf(context).width *0.50,
                    height: MediaQuery.sizeOf(context).height *0.40,
              

                    child: ProRow(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                    children: [
                    Flexible(
                           child:CustomKeyboard(
                           onPressed: (value){},
                           label:'',
                         ),
                       ), 
                      ],
                    ),
                  ),
                ],
              ),
            ),
         ),
         );
        }
      ),
    ),
  ),
 ),
);
 }
}  */
  
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:profinwhatsapp/core/view/base_widgets/screen/otp_widgets.dart/keyboard_widgets.dart';
import 'package:profinwhatsapp/core/views/base_widgets/base_widgets.dart';

class OtpEntryScreen extends StatelessWidget {
  const OtpEntryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const ProText(''),
      ),
      body: SingleChildScrollView(
          child: Padding(padding: EdgeInsets.all(16.0), 
           child: ProColumn(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 45),

            const ProText(
              'OTP Verification',
              style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold, inherit: true,),
              textAlign: TextAlign.start,
              ),
            const SizedBox(height: 8),
             const ProText(
              'Enter the OTP sent to +9187567****6',
              style: TextStyle(fontSize: 15.0, inherit: true),
              textAlign: TextAlign.start,
            ),
            const SizedBox(height: 50),
            ProRow(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: List.generate(
                6,
                (index) => Flexible(
                  child: SizedBox(
                    width: 60,
                    child: ProContainer(
                      decoration: BoxDecoration(
                        border: Border.all(width: 2, color: Colors.black),
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

