import 'dart:ui';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:injector/injector.dart';
import 'package:profinwhatsapp/core/views/widgets/login_widgets/login_widget.dart';

import 'core/dependencies/injector.dart';
import 'core/views/base_widgets/base_widgets.dart';
import 'core/views/login_view.dart';

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
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Demo Home Page'),
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
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

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
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('signup Form'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Container(
            padding: const EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 10.1),
                ),
                /*   BaseWidgets.proIcon(
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
                  ),*/

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
                        ),*/

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
                        'images/google_logo.png',
                        height: 50,
                        width: 50,
                      ),
                      const SizedBox(height: 30),
                      const Text('Login with google')
                    ],
                  ),
                ),
                const SizedBox(height: 30),
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
                        'images/facebook_logo.png',
                        height: 50,
                        width: 50,
                      ),
                      const Text('Login with Facebook'),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
} 
  
                   
            /*    const SizedBox(height: 40),
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
                 ),*/
         