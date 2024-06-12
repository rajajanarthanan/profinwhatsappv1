
import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as chat_types ;
import 'package:flutter_chat_ui/flutter_chat_ui.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:profinwhatsapp/core/views/base_widgets/base_widgets.dart';


class ChatScreen extends StatefulWidget {


 @override
  _ChatScreenState createState() => _ChatScreenState();

}

class _ChatScreenState extends State<ChatScreen> {
  late TextEditingController _controller;
  
 
  

@override
  void initState(){
    super.initState();
    _controller = TextEditingController();
  }
  
   @override
   void dispose(){
    _controller.dispose();
    super.dispose();
   }
  

  
  void _showAttachmentOptions(BuildContext context ) async {
   RenderBox renderBox = context.findRenderObject() as RenderBox;
   Offset offset = renderBox.localToGlobal(Offset.zero);
   double iconSize = 40.0; // Size of the icons
   double containerSize = iconSize * 5 + 17.5; // Width and height of the square container

  await showMenu(
    context: context,
    position: RelativeRect.fromLTRB(
      offset.dx - 50, // Center the popup above the button
      offset.dy - 240, // Adjust the position to be above the button
      offset.dx +  renderBox.size.width,
      offset.dy,
    ),

   
   items: [
      PopupMenuItem(
        padding: EdgeInsets.zero,
        child: ProContainer(
           width: containerSize,
           height: containerSize,
           padding: const EdgeInsets.all(8.0),
           color: Colors.white,
           child: GridView.count(
                 crossAxisCount: 3,
                    children:[ 
                              Icon(Icons.image, size: iconSize, color: Colors.purple),
                              Icon(Icons. edit_document, size: iconSize, color: Colors.blue[900]),
                              Icon(Icons.payment, size: iconSize, color: Colors.teal),
                              Icon(Icons.location_on, size: iconSize, color : Colors.green[700]),
                              Icon(Icons.camera, size: iconSize,color : Colors.pink[600]), 
                            ],
                         ),
                       ),
                     ), 
               ],
 ).then((value) {
    if (value != null) {
      _handleMenuItemClick(value);
    }
  });
}
 

void _handleMenuItemClick(String value) {
  // Handle the selected item here
}

  
 @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         title:  const ProText(
            'Chat',
            style : TextStyle(
            fontSize : 24, 
            fontWeight : FontWeight.bold),
            textAlign : TextAlign.center,
        ),
      ),
      
      body: ProColumn(
        children :[
            const Expanded(
             child:Center(
                child: ProText('')),
          ),
             Padding(
            padding: const  EdgeInsets.all(16.0),
            child :  ProRow(
                children: [
                    Expanded(
                      child:FormBuilderTextField(
                        controller : _controller,
                        decoration: const InputDecoration(
                          hintText: 'Type a Message',
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 12.0),
                        ), 
                         name: '',
                        maxLengthEnforcement: null, 
                         inputFormatters: null, 
                         selectionHeightStyle:  BoxHeightStyle.max, 
                         selectionWidthStyle: BoxWidthStyle.max, 
                         dragStartBehavior: DragStartBehavior.start,
                         onChanged: (value ) {  }, 
                         validator: (value) {  }
                      ),
                    ),
                      
                  Builder(
                  builder: (context) {
                    return ProIconButton(
                      icon: const  Icon(Icons.attach_file),
                      onPressed: () {
                        _showAttachmentOptions(context);
                      },
                    );
                  },
                ),

                 ProIconButton(
                   icon:const Icon(Icons.attach_money_sharp),
                   onPressed: () { }, 
                   ),
                    

                  ProIconButton(
                  icon:const  Icon(Icons.send),
                  onPressed: () {
                    // handle sending message
                  }, 
                ),
                    
                 
              ],
            ),
          ),
        ],
      ),
   );
      
  }
}
     

