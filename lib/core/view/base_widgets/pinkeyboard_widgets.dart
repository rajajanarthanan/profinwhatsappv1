import'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:profinwhatsapp/core/views/base_widgets/base_widgets.dart';


class MpinKeyboard extends StatelessWidget {
   final Function onKeyPressed;

 MpinKeyboard({

     required this.onKeyPressed,
  });


  @override
  Widget build(BuildContext context) {
    return 
          BaseWidgets.proGridViewBuilder(
             shrinkWrap: true,
             physics: const  NeverScrollableScrollPhysics(), 
             gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
               childAspectRatio:2,
              ),
              itemCount:12, // Constrain the size of the keyboard to its contents
              itemBuilder: ( context, index) {
                 return GestureDetector(
                     onTap: () => onKeyPressed(index),
                      child: Container(
                         margin: const  EdgeInsets.all(4),
                         decoration:  BoxDecoration(
                         color: Colors.black12,
                          borderRadius: BorderRadius.circular(10.0),  
                        ),
                         child: Center(
                           child: Text(
                             index < 9 ? '${index + 1}' : index == 9 ? '*' : index == 10 ? '0' : '#',
                          ),
                       ),
                     ),
                 );
              },
            );
           }
        }
  
