
import 'package:flutter/material.dart';
import 'package:profinwhatsapp/core/views/base_widgets/base_widgets.dart';


class CustomKeyboard extends StatelessWidget {
  final String label;
  final void Function(String value) onPressed;

  const  CustomKeyboard({
    super.key, 
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
          child:GridView.builder(
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
      value = (index + 1).toString();
    } else if (index == 9) {
      value = '⌫';
    } else if (index == 10) {
      value = '0';
    } else {
      value = '✓';
    }

    return GestureDetector(
    //  key: Key('keyboard_$value'), // Unique key for each button
      onTap: () {
        onPressed(value);
      },
      child:ProContainer(
        margin: const  EdgeInsets.all(1),
        decoration:  BoxDecoration(
          color: Colors.white,
            borderRadius: BorderRadius.circular(10.0),  
          ),
             color: Colors.white,
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
      
     
      
      
       
             
             
             
             
           
         
           



 

/*import 'package:flutter/material.dart';

class CustomKeyboard extends StatelessWidget {
  final void Function(String value) onPressed;

  CustomKeyboard({
    required this.onPressed, required String label,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Container(
          color: Colors.black12,
          child: GridView.builder(
            physics: NeverScrollableScrollPhysics(),// disable scroll widgets
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              childAspectRatio: (constraints.maxWidth/3) / (constraints.maxHeight / 4),
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
      value = (index + 1).toString();
    } else if (index == 9) {
      value = '⌫';  // Backspace
    } else if (index == 10) {
      value = '0';  // Zero
    } else {
      value = '✓';  // Confirm
    }
    return GestureDetector(
      onTap: () {
        onPressed(value);
      },
      child:ProContainer(
        margin: const EdgeInsets.all(4),
        decoration: BoxDecoration(
          color: Colors.white, // You can adjust the color here
          borderRadius: BorderRadius.circular(10.0),
        ),
       color: Colors.white,
        child: Center(
          child: ProText(
            value,
            style: const TextStyle(
              fontSize: 24,
              color: Colors.black, // You can adjust the color here
            ),
          ),
        ),
      ),
    );
  }
}
*/