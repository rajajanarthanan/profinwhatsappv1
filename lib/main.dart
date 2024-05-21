import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:injector/injector.dart';
import 'package:profinwhatsapp/core/base/base_viewmodel.dart';
import 'package:profinwhatsapp/main%20copy.dart';
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
        '/loginview': (context) => LoginView(), // Define the route
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
                image:AssetImage('assets/image.png'), 
                width: 200.0,
                height: 200.0,
                color: Colors.blue,
                fit: BoxFit.cover,
              ),
                Base_Widgets.proText(
                data: 'Hello, Flutter!',
                style: TextStyle(fontSize: 24, color: Colors.blue),
                textAlign: TextAlign.center,
              ),
              

           const Text(
             'You have pushed the button this many times:',
            ),
            //text,
           
           // BaseWidgets.proElevatedButton(
           //    onPressed: () {}, child: const Text("clickMe")),

            //BaseWidgets.proTextButton(
            //  onPressed: () {
            //   Navigator.pushNamed(context, '/loginview');
            // },
            // child: const Text("GoToApp")),

            // BaseWidgets.proLoadingButton(
            //     onPressed: () {
            //       // Handle button press
            //     },
            //     isLoading: true, // Change this to false to hide loading state
            //     child: const Text("Loading Button")),

            // BaseWidgets.proAsyncButton(
            //   text: 'Click Me',
            //   onPressed: () async {
            //     await Future.delayed(const Duration(seconds: 1));
            //   },
            // ),
            // BaseWidgets.proIconButton(
            //   onPressed: () {
            //     // Handle button press
            //   },
            //   iconData: Icons.error,
            //   tooltip: 'fail',
            // ),
           ],
        ),
      ),

      //floatingActionButton: FloatingActionButton(
      //  onPressed: _incrementCounter,
      // tooltip: 'Increment',
      // child: const Icon(Icons.add),
      //  ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
