import'package:flutter/material.dart';
import 'package:profinwhatsapp/core/view/base_widgets/biometric_widgets.dart';
import 'package:profinwhatsapp/core/views/base_widgets/base_widgets.dart';


class MpinKeyboard extends StatelessWidget {
   final String label;
    final void Function( String value) onPressed;


 MpinKeyboard({
     required this.label,
     required this.onPressed,
  });


  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder:(context,Constraints) {
          return Container(
             height: Constraints.maxHeight,
             color:Colors.black12,
            child: BaseWidgets.proGridViewBuilder(
             physics: const  NeverScrollableScrollPhysics(), 
             gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
               childAspectRatio: (Constraints.maxWidth /3)/(Constraints.maxHeight /4),
              
              ),
              itemCount:12, 
               shrinkWrap: true, // Constrain the size of the keyboard to its contents
              itemBuilder: (BuildContext context, int index) {
                return _mbuildKey(index);
                },
             ),
        );
      },
    );
    
  }


     Widget _mbuildKey (int index){
        String value;
          if(index < 9){
            value = (index + 1).toString();
          } else if (index == 9){
            value =  '⌫';
          } else if (index == 10){
            value =  '0';
          }  else  {
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

    
  