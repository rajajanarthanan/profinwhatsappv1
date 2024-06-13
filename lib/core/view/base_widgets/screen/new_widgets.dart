import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:profinwhatsapp/core/views/base_widgets/base_widgets.dart';
import 'package:get/get_state_manager/src/simple/get_responsive.dart';

class MyNewWidget extends GetResponsiveView {
  MyNewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const  ProText('new widgets')
      ),
         body:  Center(
        child: ProColumn(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
        /*   ProContainer(
              color: Colors.blue,
              padding: const EdgeInsets.all(16.0),
              width: 100,
              height: 60,
              margin: const EdgeInsets.all(16.0),
              child: const ProText(
                'Hello, ProContainer!',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
            ),
            ProRow(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  color: Colors.purple,
                  width: 200,
                  height: 30,
                ),
              ],
            ),
            const  ProColumn(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children:[
                   ProText('hello, column')
              ],
            ),
             ProElevatedButton(
              onPressed:() {
                // onPressed functionality here,
              },
              child: const Text( 'click me'),
              style: const  ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(Colors.transparent),
               ),
              ),

              const SizedBox(height:10),
              ProTextButton(
               onPressed:(){
                // OnPressed functionality add..
               },
               child:const  ProText('continue'),
               style:const  ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(Colors.lightGreen),
               ),
             ),

              const  ProImage(
                image: AssetImage('assets/google_logo.png'),
                width:100,
                height:100,
              ),

                const ProIcon(
                 Icons.send,
                  size: 60,
                  color: Colors.black,
               ),

              const ProText(
                 'hello ,continue!',
                 style: TextStyle(
                  color: Colors.redAccent,
                  fontSize: 24, 
                  fontWeight: FontWeight.bold,
                 ),textAlign: TextAlign.center,
               ),
               
               ProTextField(
                name: 'enter your name',
                keyboardType: TextInputType.emailAddress,
                Decoration: const InputDecoration(
                  labelText: 'email',
                  prefixIcon: Icon(Icons.email),
                  border: OutlineInputBorder()
                ), 
                 onChanged: (value){
                  // oChange functionality here,
                 },
                validator: (value) {
                  return null; // validator functionality here.
                  },
                ),*/
                
      ProGridView(
       padding: const EdgeInsets.all(8.0),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          // crossAxisSpacing: 8.0,
          // mainAxisSpacing: 8.0,
        ),
        itemBuilder: (context, index) {
          return Container(
            color: Colors.blue,
            child: Center(
              child: Text(
                'Item $index',
                style: const TextStyle(color: Colors.white),
              ),
            ),
          );
        },
        itemCount: 20,
      ),
      /* ProTable(
         data:const[
                ['header 1','header 2','header 3'],
                ['data 1','data 1','data 1' ],
                ['data 2','data 2','data 2'],
                ['data 3','data 3','data 3'],
                ['data 4','data 3','data 3'],
                ['data 5','data 3','data 3'],
                ['data 6','data 3','data 3'],
                ['data 7','data 3','data 3'],

              ],columnCount:3,
               border:TableBorder.all(),
               headerStyle: const TextStyle(fontWeight: FontWeight.bold),
               cellStyle: const TextStyle(color:Colors.purple),
               cellPadding:const EdgeInsets.all(8.0),
               cellAlignment: Alignment.center,
               ), 
               
               
              const  ProLinearProgressIndicator(
                 value:0.5,
                 backgroundColor: Colors.black,
                 semanticsLabel: 'loading',
               ),

               ProCheckbox(
                name: 'click me', 
                title: const ProText('hello checkbox'),
                initialValue: true,
                onChanged: (value) {
                  // onChanged functionality here.
                }
               ),
                ProCheckboxGroup(
                 name: 'click me', 
                 options: const [ 
                    FormBuilderFieldOption(value: 'option1',child: Text('Option 1')),
                    FormBuilderFieldOption(value: 'option2', child: Text('Option 2')),
                    FormBuilderFieldOption(value: 'option3', child: Text('Option 3'),)
                 ],
                 selectedOptions: const [],
                 onChanged: (value){
                   // onChanged functionality here.
                 }
               ),

                    ProChoiceChip(
                      name: 'check me', 
                      options:const [  
                      FormBuilderChipOption(value: 'option1',child:Text('Option 1')),
                      FormBuilderChipOption(value:'option2',child:Text('Option 2')),
                      FormBuilderChipOption(value:'option3',child:Text('Option 3'),)
                       ],
                       selectedValues:const [],
                       onChanged:(value){
                        // onChanged functionality here.
                       }
                     ),

                     ProDateRangePicker(
                        name: 'check date',
                        firstDate: DateTime(2023) ,
                        lastDate: DateTime(2024),
                        onDateRangeSelected:(dateRange){
                          // ondateRangeSelected functionality here.
                        }
                      ),

                       ProDateTimePicker(
                        name: 'date time picker',
                        margin:const  EdgeInsets.all(8.0),
                        child:const ProText('Date Time Picker'),
                        onDaterTimeSelected:(dateTime){
                          // onDateTimeSelected functionality here,
                        }
                      ), 
                      
                      ProDropdown(
                         name: 'Dropdown',
                         items: const [
                           DropdownMenuItem(child: Text('Option 1'), value:'option1'),
                           DropdownMenuItem(child: Text('option 2'),value:'option2'),
                           DropdownMenuItem(child: Text('option 3'),value:'option3'),
                         ] ,
                         hint:'selection on options',
                         icon:const Icon(Icons.arrow_drop_down),
                        style:const TextStyle(color:Colors.purple,fontSize:24),
                        padding:const EdgeInsets.symmetric(horizontal: 16.0,vertical: 8.0),
                        ),

                        ProFilterChip(
                          name: 'filterchip', 
                          options: const  [
                            FormBuilderChipOption(value:'option1',child:Text('option 1')),
                            FormBuilderChipOption(value:'option2',child:Text('Option 2')),
                            FormBuilderChipOption(value:'option3',child:Text('Option 3')),
                          ],
                          OnSelected:(bool isSelected){
                            //onselected functionality here
                          },
                          selected:true,
                          labelStyle: const TextStyle(color:Colors.white),
                          backgroundColor: Colors.green,
                          selectedColor: Colors.blue,
                          avatar:const Icon(Icons.filter_alt,color:Colors.white),
                          
                          ),

                           ProRadioGroup(
                            name:'radiogroup',
                            options:const  [
                              FormBuilderFieldOption(value: 'number1',child:Text('Number 1')),
                              FormBuilderFieldOption(value:'number2',child:Text('Number 2')),
                              FormBuilderFieldOption(value:'number 3',child:Text('Number 3')),
                            ],
                            direction:Axis.vertical,
                            textStyle:const TextStyle(color:Colors.blue,fontSize:18),
                            activeColor: Colors.purple,
                          ),

                          ProRangeSlider(
                            name: 'Range silder',
                            max:100 , 
                            min: 0,
                            lowerValue:20,
                            upperValue:80,
                            onChanged: (values){
                              // onchanged functionality here,
                            },
                            activeColor:Colors.blue,
                            thumbColor:Colors.blue,
                            thumbRadius:12,
                            thumbStrokeWidth: 2,
                            thumbStrokeColor:Colors.white,
                            leftchild:const Icon(Icons.arrow_back,color:Colors.blue),
                            rightchild:const Icon(Icons.arrow_forward,color:Colors.blue),
                            
                            ),

                           ProSlider(
                           name: 'slider', 
                           initialValue: 50,
                            min: 20, 
                            max: 100,
                            onChanged: (value){
                                  // onchanged functinality here
                            },
                            divisions: 5,
                            activeColor: Colors.green,
                            inactiveColor: Colors.purple,
                            thumbRadius: 2,
                            thumbStrokeWidth: 12,
                            thumbColor:Colors.white,
                         ),

                          ProSwitch(
                            name:'switch' ,
                            title: const Text('Demo Switch'),
                            value:true,
                            onChanged:(value){

                            },
                            activeColor: Colors.blue,
                            inactiveColor: Colors.grey,
                            thumbColor: Colors.white,
                            thumbRadius: 12,
                            thumbStrokeWidth: 2,
                            thumbStrokeColor: Colors.blue,
                            ),*/
                          ],
                       ),
                    ),
                );
             }
          }
      
      
      
      
      
      
      
      
      
      
       
      
    
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
     