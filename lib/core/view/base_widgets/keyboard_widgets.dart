import 'dart:ui';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:profinwhatsapp/core/views/base_widgets/base_widgets.dart';



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
        return Container(
          height: constraints.maxHeight,
          color: Colors.black12,
         child: BaseWidgets.proGridViewBuilder(
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



 @override
  Widget build(BuildContext context) {
      return Scaffold(
         appBar : AppBar(
              title : Text("")
         ),
         body: Center(
          child: Padding(
             padding: const EdgeInsets.all(16.0),
            child: Center(
             child:LayoutBuilder(
                 builder: (context, constraints) {
               return  ConstrainedBox(
                 constraints: const BoxConstraints(maxWidth: 400),
                 child: BaseWidgets.proContainer(
                  padding: const EdgeInsets.all(8.0),
                 decoration: BoxDecoration(
                 color : Colors.grey,
                 border: Border.all(color: Colors.grey),
                 borderRadius: BorderRadius.circular(8.0),
                 ),
            child: Column(
               crossAxisAlignment: CrossAxisAlignment.stretch,

             children: [
                const SizedBox(height: 45),
                BaseWidgets.proText(
                   data: 'OTP',
                   style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                   textAlign: TextAlign.start,
                   ),

                const SizedBox(height:8),
                BaseWidgets.proText(data: 'Verification',
                  style: const TextStyle(fontSize:35,fontWeight:FontWeight.bold),
                  textAlign:TextAlign.start,
                 ),

                const SizedBox(height: 10),
                 BaseWidgets.proText(
                    data: 'Enter the OTP sent to +9187567****6',
                    style:const TextStyle(fontSize:15,),
                    textAlign: TextAlign.start,
                  ),
                const SizedBox(height: 50),
                 BaseWidgets.proRow(
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
                    
                      child: BaseWidgets.proTextField(
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
                            validator: (value) {},
                           ),
                          ),
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height:70), // Add some spacing between the rows
                  SizedBox(
                    width: MediaQuery.sizeOf(context).width *0.50,
                    height: MediaQuery.sizeOf(context).height *0.40,
              

                    child: BaseWidgets.proRow(
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
          );
        }
      ),
    ),
   ),
  ),
 );
}
     
               

                 