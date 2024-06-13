
import 'package:flutter/material.dart';
import 'package:profinwhatsapp/core/views/base_widgets/base_widgets.dart';

double opcaity({double i=0.0}){
  return i;
}

class BiometricScreen extends StatefulWidget {
  const BiometricScreen ({super.key});

  @override
  State<BiometricScreen> createState() => _BiometricScreenState();
}



class _BiometricScreenState extends State<BiometricScreen> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor : Colors.black.withOpacity(1.0),
      title : const  ProText(
        'Biometric verification',
         ),
         content :const  ProColumn(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment : CrossAxisAlignment.center,
          children : [
               ProIcon(
               Icons.fingerprint, 
              
               ),

                 SizedBox(height : 20),
                   ProText(
                     'Scanning',
                    ),

                  SizedBox(height : 20),
                  ProText(
                    ' Biometric Authentication',
                    style : TextStyle(
                      fontSize :25,
                      fontWeight : FontWeight.bold,
                    ),
                 ),  
              ],
            ),
              actions : [
                 ProTextButton(
                  onPressed : () { 
                  Navigator.of(context).pop();
                  },
                  child: const  ProText(
                    'Close'
                    ),  
                  ),
                 ],
               );
    
           }
         }

