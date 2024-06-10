
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
      title : BaseWidgets.proText(
        data:'Biometric verification',
         ),
         content : Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment : CrossAxisAlignment.center,
          children : [
               BaseWidgets.proIcon(
                icon: Icons.fingerprint,
                size : 100,
                color : Colors. blue,
                 ),

                 const SizedBox(height : 20),
                  BaseWidgets.proText(
                    data : 'Scanning',
                    ),

                  const SizedBox(height : 20),
                  BaseWidgets.proText(
                    data :' Biometric Authentication',
                    style : const TextStyle(
                      fontSize :25,
                      fontWeight : FontWeight.bold,
                    ),
                 ),  
              ],
            ),
              actions : [
                 BaseWidgets.proTextButton(
                  onPressed : () { 
                  Navigator.of(context).pop();
                  },
                  child: const Text('Close'), textAlign: justify, textDirection: ltr,
                   ),
                 ],
               );
    
           }
         }

