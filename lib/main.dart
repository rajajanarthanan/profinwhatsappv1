import 'dart:ui';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
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
            apiKey: 'AIzaSyDcTuDNlTSKG1zqppwJmBtEvVdNFD11Tzk',
            appId: '1:325000420972:web:f96236a88d2d28e37b4249',
            messagingSenderId: '325000420972',
            projectId: 'profinv1'));
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
        '/loginpage':(context) =>LoginPage(),
      
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
         title: Text(widget.title),
      ),

      body: Center(
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
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
                  ),
        
                    BaseWidgets.proTextField(
                       controller: TextEditingController(),
                       decoration: const InputDecoration(
                       labelText: 'Enter your name',
                       border: OutlineInputBorder(),
                       ),
                       onChanged: (value) {
                       print('Text changed: $value');
                       }, maxLengthEnforcement: null,
                          inputFormatters: null, 
                          selectionHeightStyle: BoxHeightStyle.max,
                          selectionWidthStyle: BoxWidthStyle.max, 
                          dragStartBehavior: DragStartBehavior.start,
                 ),*/
                
           const Text(
             'You have pushed the button this many times:',
            ),
            text,
           
              BaseWidgets.proElevatedButton(
               onPressed: () {}, child: const Text("clickMe")),

              BaseWidgets.proTextButton(
                 onPressed: () {
                 Navigator.pushNamed(context, '/loginview');
                 },
                 child: const Text("GoToApp")),

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
       ),
      ),
    );
}
}