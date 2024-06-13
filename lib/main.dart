

import 'dart:ui';

import 'package:device_preview/device_preview.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
// ignore: unused_import
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:injector/injector.dart';
import 'package:profinwhatsapp/core/view/base_widgets/screen/login_page1.dart';
import 'package:profinwhatsapp/core/view/base_widgets/screen/new_widgets.dart';
import 'package:profinwhatsapp/core/view/base_widgets/screen/otp_widgets.dart/otp_entry_widgets.dart';
import 'package:profinwhatsapp/core/view/base_widgets/screen/otp_widgets.dart/otp_generate.dart';
import 'package:profinwhatsapp/core/view/base_widgets/screen/otp_widgets.dart/otp_validator.dart';
import 'package:profinwhatsapp/core/view/base_widgets/screen/otp_widgets.dart/random_otp.dart';
import 'package:profinwhatsapp/core/view/base_widgets/screen/signup1_widgets.dart';
import 'package:profinwhatsapp/core/views/widgets/login_widgets/login_widget.dart';
import 'package:profinwhatsapp/core/views/widgets/login_widgets/signup_widget.dart';
import 'package:profinwhatsapp/screen/chat_screen.dart';
import 'core/dependencies/injector.dart';
import 'core/views/base_widgets/base_widgets.dart';
import 'core/views/login_view.dart';
// ignore: unused_import
import 'package:profinwhatsapp/core/view/base_widgets/screen/otp_widgets.dart/keyboard_widgets.dart';
import 'package:profinwhatsapp/core/views/base_widgets/base_widgets.dart';
import 'package:profinwhatsapp/core/view/base_widgets/biometric_widgets.dart';
import 'package:profinwhatsapp/core/view/base_widgets/pinkeyboard_widgets.dart';
import 'package:profinwhatsapp/core/view/base_widgets/splash_screen.dart';
import 'package:flutter_chat_ui/flutter_chat_ui.dart';
 import 'package:flutter_chat_types/flutter_chat_types.dart' as chat_types;

import 'package:profinwhatsapp/core/view/base_widgets/screen/otp_widgets.dart/otp_validator.dart';


Future<void> main() async {
  setupInjector();
  WidgetsFlutterBinding.ensureInitialized();

  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: '1321321321',
            appId: '32131321',
            messagingSenderId: '325000420972',
            projectId: '2121'));
  }

  await Firebase.initializeApp();
  runApp(
    DevicePreview(
      enabled: true,
      builder: (context) => const MyApp()));
    //const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

 
 
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
   
     // Generate a random true OTP (6 digits)
    final trueOTP = generateOTP(true);

    // Generate a random false OTP (5 digits)
   final falseOTP = generateOTP(false);
   
    return MaterialApp(
      builder: DevicePreview.appBuilder,
      title: 'Flutter Demo',
      theme: ThemeData(
       primarySwatch: Colors.green,
        ),
       home:
      //MyNewWidget(),
       // MyKeyboard (), 
      // OtpEntryScreen(),
       //SplashScreen(),
      //const MySignupPage(),
       MyLoginPage(),
       //const OtpRegex(),
       //const RandomOtpEntryScreen(trueOTP: '', falseOTP: '', ),
      // const MySignupPage(),
     // const OtpEntryScreen (),
        //ChatScreen(),     
      routes: {
        '/loginview': (context) => LoginView(),
        '/loginpage': (context) => const LoginPage(),

        // Define the route
      },
      debugShowCheckedModeBanner: false,
      );
    }
  }
  
 

class MyHomePage extends StatefulWidget {
  var title;

 MyHomePage({super.key, required this.title});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

 /*bool get KIsweb {
    // replace condition
    return true;
  }

  Widget web2() {
    return SizedBox(
      height: 500,
      width: 500,
      child:Container(
        color: Colors.white,
        child: const Center(
        child: Text('Web2 Content'),
      ),
     ),
   );
  }*/
   
 

  
   void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }
   

   @override
  Widget build(BuildContext context) {
    BaseWidgets basewidgets = BaseWidgets();
    final injector = Injector.appInstance;

   
    // final authService = injector.get<AuthService>();


    FloatingActionButton(
      onPressed: _incrementCounter,
      tooltip: 'Increment',
      child: const Icon(Icons.add),
    ); // This trailing comma makes auto-formatting nicer for build methods.

    final text = Text(
      '$_counter',
      style: Theme.of(context).textTheme.headlineMedium,
    );
   

    return Scaffold(
        appBar: AppBar(
           title: const Text(" enter OTP"),
           ),
  

    );
  }
}
        /*   children:[
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children : [
                  (kIsWeb) ? web2() : Container(),
                  ], 
                ),
              ],
              Column(
                mainAxisSize: MainAxisSize.min,
                children : [
                   ChatScreen(),
                 ],
               ), 
           
        
   
    


                 children:[
                  
                    // const SizedBox(height : 30),
                       BaseWidgets.proElevatedButton(
                      onPressed : (){
                       // BiometricScreen().build(context);
                        // navigate  to the biometric screen
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(builder: (context)=> BiometricScreen(),
                            
                        //   ),
                        // );
                      },


                        child :BaseWidgets.proText(
                          data: 'Show Biometric Screen',
                          style : const TextStyle(fontSize :16, fontWeight : FontWeight.bold),
                          
                          ),

                       ),
                  const SizedBox(height:40),
                   BaseWidgets.proText(
                    data: 'Enter 4 Digit Login PIN',
                    style: const  TextStyle(
                      fontSize:30,
                      fontWeight:FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),


                  const SizedBox(height: 30),
                  BaseWidgets.proRow(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children:List.generate(
                     4, (index)=>Flexible(
                      child: SizedBox(
                        width:40,
                        child : BaseWidgets.proTextField(
                          keyboardType: TextInputType.number,
                          textAlign : TextAlign.center,
                          maxLength: 1,
                          decoration: const InputDecoration(
                            counterText: '',
                           ),
                            maxLengthEnforcement: null,
                            inputFormatters: null,
                            selectionHeightStyle: BoxHeightStyle.max, 
                            selectionWidthStyle: BoxWidthStyle.max, 
                            dragStartBehavior: DragStartBehavior.start, 
                            onChanged: (value ) {  },
                            validator: (value)  {  }
                            ),
                          
                           ),
                          ),
                        ),
                      ),
                       
           
                     
                     const SizedBox(height:50),
                     BaseWidgets.proTextButton(
                      onPressed: () { }, 
                      child: const Text(
                        'Forget MPIN?',
                        style:TextStyle(
                          color:Colors.blue,
                          fontSize : 20,
                          ),
                        ), 
                    
                     ),

                   
                   
                         
                     const SizedBox(height:50),
                    SizedBox(
                    width:MediaQuery.sizeOf(context).width *0.50,
                    height : MediaQuery .sizeOf(context).height *0.40,
                    
                    child:BaseWidgets.proRow(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                      children:[
                          Flexible(
                            child: MpinKeyboard(
                             label: '',
                            onPressed: (String value) {  }, 
                              ),
                            ),
                         ],
                       ),
                    ),
                 ],
                  ),  
                ),  
              ),
            ),
           ),
         );
      }
    }  */


  
   
                   
                 
            




              /*  BaseWidgets.proTextField(
                      keyboardType: TextInputType.emailAddress,
                      decoration : const InputDecoration(
                      labelText: 'Email',
                      hintText: ' Enter email',
                      prefixIcon: Icon(Icons.email),
                      border: OutlineInputBorder(),
                      ),  maxLengthEnforcement: null,
                          inputFormatters: null, 
                          cursorHeight: 20.0, // Correct type and value for cursorHeight
                          selectionHeightStyle: BoxHeightStyle.includeLineSpacingTop,
                          selectionWidthStyle: BoxWidthStyle.max,
                          dragStartBehavior: DragStartBehavior.down,

                         onChanged: (value) { 
                          // No return type required for onChanged callback
                          },
                         validator: (value) {},  
                     ),
                const  SizedBox(height:40),
                BaseWidgets.proTextField(
                      keyboardType: TextInputType.visiblePassword,
                      decoration : const InputDecoration(
                      labelText: 'PassWord',
                      hintText: ' Enter PassWord',
                      prefixIcon: Icon(Icons.password),
                      border: OutlineInputBorder(),
                       ), maxLengthEnforcement: null, 
                          inputFormatters: null, 
                          selectionHeightStyle: BoxHeightStyle.includeLineSpacingTop, 
                          selectionWidthStyle: BoxWidthStyle.max,
                          dragStartBehavior: DragStartBehavior.down,
                          
                         onChanged: ( value) {
                          print('Text changed: $value');
                         }, 
                         validator: (value) {},
                        
                      ),
       
                const  SizedBox(height:30,),
                BaseWidgets.proElevatedButton(
                           onPressed: () {} , 
                         child: const Text("login"),
                        ),

                BaseWidgets.proText(
                    data: 'Sign Up',
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    ),
                   ),
                const SizedBox(height: 50),
                BaseWidgets.proTextField(
                  keyboardType: TextInputType.name,
                  decoration: const InputDecoration(
                    labelText: 'User Name',
                    hintText: 'Enter User Name',
                    border: OutlineInputBorder(),
                    ),
                  maxLengthEnforcement: null,
                  inputFormatters: null,
                  cursorHeight: 20.0,
                  selectionHeightStyle: BoxHeightStyle.includeLineSpacingTop,
                  selectionWidthStyle: BoxWidthStyle.max,
                  dragStartBehavior: DragStartBehavior.down,
                  onChanged: (value) {
                    // No return type required for onChanged callback
                  },
                  validator: (value) {},
                  ),
                const SizedBox(height: 40),
                BaseWidgets.proTextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                    labelText: 'Email',
                    hintText: 'Enter Email Address',
                    border: OutlineInputBorder(),
                  ),
                  maxLengthEnforcement: null,
                  inputFormatters: null,
                  cursorHeight: 20.0,
                  selectionHeightStyle: BoxHeightStyle.includeLineSpacingTop,
                  selectionWidthStyle: BoxWidthStyle.max,
                  dragStartBehavior: DragStartBehavior.down,
                  onChanged: (value) {
                    // No return type required for onChanged callback
                  },
                  validator: (value) {},
                ),
                const SizedBox(height: 40),
                BaseWidgets.proTextField(
                  keyboardType: TextInputType.visiblePassword,
                  decoration: const InputDecoration(
                    labelText: 'Password',
                    hintText: 'Enter Password',
                    border: OutlineInputBorder(),
                  ),
                  maxLengthEnforcement: null,
                  inputFormatters: null,
                  selectionHeightStyle: BoxHeightStyle.includeLineSpacingTop,
                  selectionWidthStyle: BoxWidthStyle.max,
                  dragStartBehavior: DragStartBehavior.down,
                  onChanged: (value) {},
                  validator: (value) {},
                ),
             
                const SizedBox(height: 10),
                BaseWidgets.proTextButton(
                  onPressed: () {
                    // add reset password functionality here...
                  },
                  child: const Text(
                    'Forget Password?',

                  ),
                  textAlign: TextAlign.justify,
                  textDirection: TextDirection.ltr,
                ),

                const SizedBox(height: 20),
                BaseWidgets.proElevatedButton(
                  onPressed: () {
                    // add submit button here
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                  child: const Text('Continue'),
                ),
                const SizedBox(height: 30),
                BaseWidgets.prolinearProgressIndicator(
                  value: 0.1,
                  backgroundColor: Colors.black,
                  color: Colors.black,
                  semanticsLabel: 'loading...',
                  borderRadius: BorderRadius.zero,
                ),
                const SizedBox(
                  height: 10,
                ),
                BaseWidgets.proText(
                  data: 'or',
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 30),
                BaseWidgets.proElevatedButton(
                  onPressed: () {
                    // Add Google login functionality here
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    padding: const EdgeInsets.symmetric(
                        vertical: 8.0, horizontal: 12.0),
                    textStyle: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.bold),
                    elevation: 5,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                       'assets/google_logo.png',
                        height: 50,
                        width: 50,
                      ),
                      const SizedBox(height: 30),
                      const Text('Login with google')
                    ],
                  ),

              ), 
                BaseWidgets.proElevatedButton(
                  onPressed: () {
                    // Add Facebook login functionality here
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    padding: const EdgeInsets.symmetric(
                        vertical: 8.0, horizontal: 12.0),
                    textStyle: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.bold),
                    elevation: 5,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/facebook_logo.png',
                        height: 50,
                        width: 50,
                        ),
                      const Text('Login with Facebook'),
                           ],
                          ),
                        ),
                 const SizedBox(height:20),     
                 BaseWidgets.proText(
                     data: 'Already have an account?',
                     textAlign: TextAlign.center,
                     style: const TextStyle(fontSize: 15),
                     ),
                
              





  
                   
                const SizedBox(height: 40),
                BaseWidgets.proElevatedButton(
                   onPressed:(){
                    // add Email login functionality here
                   },
                   child: const Text('Login With Email')
                   ),
              const SizedBox(height:40),
              BaseWidgets.proElevatedButton(
                    onPressed: () {
                    // Add Google login functionality here
                     },
                    child: const Text('Login with Google'),
                  
                    ),
             const  SizedBox(height: 40),
             baseWidgets.proElevatedButton(
                   onPressed: () {
                  // Add Facebook login functionality here
                   },
                  child: const Text('Login with Facebook'),
                  ),
                const SizedBox(height:40),
             BaseWidgets.proElevatedButton(
                  onPressed:(){
                  //add twitter login functionality here
                  },
                   child: const Text('Login With Twitter '),
                  ),     
               

            
             BaseWidgets.proLoadingButton(
                 onPressed: () {
                   // Handle button press
                  },
                  isLoading: true, // Change this to false to hide loading state
                  child: const Text("Loading Button")),

              BaseWidgets.proAsyncButton(
                 text: 'Click Me',
                 onPressed: () async {
                 await Future.delayed(const Duration(seconds: 1));
                 },
                ),
              BaseWidgets.proIconButton(
                 onPressed: () {
                 // Handle button press
                 },
                 iconData: Icons.error,
                 tooltip: 'fail',
                 ),
              ],


              BaseWidgets.proIcon(
                icon: Icons.login,
                size: 100.0,
                color:Colors.purple,
                weight: 2.0,
                opticalSize:100.0,
                shadows: [
                 const Shadow(
                    offset: Offset(2.0,2.0),
                  blurRadius: 5.0,
                    color: Color.fromARGB(128, 0, 0, 0),
                  ),
                  ],
                semanticLabel:  'accessibility icon',
                textDirection: TextDirection.rtl,
               ),
              BaseWidgets.proImage(
                image:const AssetImage('assets/image.png'), 
                width: 200.0,
                height: 200.0,
                color: Colors.blue,
                fit: BoxFit.cover,
                ),
              
              BaseWidgets.proColumn(
                 mainAxisAlignment: MainAxisAlignment.start,
                 crossAxisAlignment: CrossAxisAlignment.center,
              
                ),
              
              BaseWidgets.proContainer(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(8.0),
                  color: Colors.blue,
                  width: 200.0,
                  height: 200.0,
                  margin: const EdgeInsets.all(8.0),
                  decoration: null,
                  child: const Text('Hello,World!'),
                  ),
              
              BaseWidgets.proRow(
                   mainAxisAlignment: MainAxisAlignment.center,
                  ),
              
              BaseWidgets.proText(
                data:'Hii,world',
                style: const TextStyle (fontSize:24),
                textAlign:TextAlign.start,
                textDirection: TextDirection.rtl,
                selectionColor: Colors.purple,
                textWidthBasis:TextWidthBasis.longestLine,
              ),

                BaseWidgets.proGridView(
                  gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                 mainAxisSpacing :10.0,
                crossAxisSpacing : 10.0,),
                children:[
                  Container(color:Colors.blue),
                  Container(color:Colors.purple),
                  Container(color:Colors.white),
                  Container(color:Colors.green),
                ]),
                 
  
                  
            BaseWidgets.proTableMaterial(
              data:[
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
                
             BaseWidgets.linearProgressIndicator(
                   value: 0.5, // Example value
                   backgroundColor: Color.fromARGB(255, 15, 14, 14),
                   color: Colors.purple,
                   semanticsLabel:'loading...',
                    ),
                   
               BaseWidgets.proBottomSheet(
                  onClosing: () {
                    Navigator.pop(context);
                  },
                  builder: (context) {
                    return const SizedBox(
                      height: 200,
                      child:  Center(
                        child:  Text('This is the bottom sheet content'),
                        
                      ),
                    );
                 }),
                   
                BaseWidgets.proAlertDialog(
                     title: const Text('Alert'),
                     content: const Text('This is an alert dialog.'),
                     actions: [
                      ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: const Text('Close'),
                      ),]
                     ),
                BaseWidgets.proDivider(
                       height: 20,
                       thickness: 2,
                       color: Colors.purple,
                       indent: 10,
                       endIndent: 10,
                    ),
                
                
              BaseWidgets.proListView(
                     itemCount: 20,
                     itemBuilder: (context, index) {
                     return ListView(
                     leading: Icon(Icons.star),
                    title: Text('Item $index'),
                   );
                   },
                  ), */

                  
             
                
                
              