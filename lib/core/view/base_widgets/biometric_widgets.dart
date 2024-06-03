
import 'package:flutter/material.dart';
import 'package:profinwhatsapp/core/views/base_widgets/base_widgets.dart';



class BiometricScreen extends StatelessWidget {
   final Function onAuthenticatePressed;


   const BiometricScreen({
        required this. onAuthenticatePressed
   });

  @override
  Widget build(BuildContext context) {
    return  Container(
      color: Colors.transparent,
      child : Center(
        child : Column(
          mainAxisAlignment: MainAxisAlignment.center,
      
             children: [
              BaseWidgets. proIcon(
                icon: Icons.fingerprint,
                size: 100,
                color : Colors.blue,
              ),

              const SizedBox(height :30),
              BaseWidgets.proText(
                data: ' place on your finger on the sensor to authentication',
                textAlign: TextAlign.center,
                style : const TextStyle(fontSize:25),
                ),
               
               const SizedBox(height :30),
               BaseWidgets.proLoadingButton(
                onPressed :() { },
                child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                   child :Text(
                    'authentication',
                    style : TextStyle(fontSize :15),
                    ),
                   ), isLoading: false,
                 ),
               ],
            ),
        ),
     );

  }
}


