import 'dart:ui';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:profinwhatsapp/core/views/base_widgets/base_widgets.dart';



/*class CustomKeyboard extends StatelessWidget {
  final String label;
  final void Function(String value) onPressed;

    CustomKeyboard({
    required this.label,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
       builder: (context, constraints) {
        return Container(
          height: constraints.maxHeight,
          color: Colors.black12,
         child:ProGridViewBuilder(
        physics: const NeverScrollableScrollPhysics(), // Disable scrolling
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: (constraints.maxWidth / 3) / (constraints.maxHeight / 4),
            ),
        itemCount: 12,
        shrinkWrap: true, // Constrain the size of the keyboard to its contents
        itemBuilder: (BuildContext context, int index) {
          return _buildKey( index);
            },
           ),
         );
       },
     );
  }

  Widget _buildKey( int index) {
    String value;
    if (index < 9) {
      value = (index + 1).toString();
    } else if (index == 9) {
      value = '⌫';
    } else if (index == 10) {
      value = '0';
    } else {
      value = '✓';
    }
    return GestureDetector(
      onTap: () {
        onPressed(value);
      },
      child: Container(
        margin: const  EdgeInsets.all(4),
        decoration:  BoxDecoration(
          color: Colors.black12,
            borderRadius: BorderRadius.circular(10.0),  
          ),
             child: Center(
             child: Text(
             value,
            style: const TextStyle(
              fontSize: 24,),
          ),
        ),
      ),
    );
  }
}
*/


class CustomKeyboard extends StatelessWidget {
  final String label;
  final void Function(String value) onPressed;

  const CustomKeyboard({
    required this.label,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return  ProContainer(
          height: constraints.maxHeight,
          color: Colors.black12,
          child:ProGridViewBuilder(
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              childAspectRatio: (constraints.maxWidth / 3) / (constraints.maxHeight / 4),
            ),
            itemCount: 12,
            shrinkWrap: true,
            itemBuilder: (BuildContext context, int index) {
              return _buildKey(index);
            },
          ),
        );
      },
    );
  }
Widget _buildKey(int index) {
  String value;
  if (index < 9) {
    // Display numbers from 1 to 9 for indices 0 to 8
    value = (index + 1).toString();
  } else if (index == 9) {
    // Display number 0 for index 9
    value = '⌫';
  } else if (index == 10) {
    // Display backspace symbol
    value = '0';
  } else {
    // Display check mark symbol
    value = '✓';
  }
  
    return GestureDetector(
      key: Key('keyboard_$value'), // Unique key for each button
      onTap: () {
        onPressed(value);
      },
      child:ProContainer(
        margin: const  EdgeInsets.all(4),
        decoration:  BoxDecoration(
          color: Colors.white,
            borderRadius: BorderRadius.circular(10.0),  
          ),
             color: Colors.black12,
             child: Center(
             child: ProText(
             value,
            style: const TextStyle(
              fontSize: 24,
              color:Colors.black
              ),
             ),
            ),
          ),
        );
     }
   }
      
      
      
      
      
      /* ProDateTimePicker(
             margin: const EdgeInsets.all(4),
             decoration: InputDecoration(
             fillColor: Colors.white,
             filled: true,
             border: OutlineInputBorder(
             borderRadius: BorderRadius.circular(15.0),
             ),
            ),
               name: '',
          child: ProText(
                   value,
                  style: const TextStyle(
                  fontSize: 24,
                ),
              ),
            ),
         );
      }
}
             
             
             
             
             
           
         
           
Widget _buildKey(int index) {
    String value;
    if (index < 9) {
      value = (index + 1).toString();
    } else if (index == 9) {
      value = '⌫';
    } else if (index == 10) {
      value = '0';
    } else {
      value = '✓';
    }

*/

 