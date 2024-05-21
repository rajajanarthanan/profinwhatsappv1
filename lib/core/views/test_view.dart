// import 'package:flutter/src/foundation/change_notifier.dart';
// import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:injector/injector.dart';
import 'package:profinwhatsapp/core/base/base_viewmodel.dart';
import 'package:profinwhatsapp/core/views/base_widgets/base_widgets.dart';
import 'package:profinwhatsapp/core/base/base_view.dart';

class TestView extends BaseView {
  // TestView() {
  //   final vm = dep.get<BaseViewModel>();
  // }

  @override
  Widget buildView(BuildContext context) {
    // TODO: implement buildView
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Demo Home Page'),
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
    final dep = Injector.appInstance;

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
           // const Text(
           //   'You have pushed the button this many times:',
           // ),
            text,
           // BaseWidgets.proElevatedButton(
            //    onPressed: () {}, child: Text("clickMe")),
           // BaseWidgets.proTextButton(onPressed: () {}, child: Text("OK")),
           // BaseWidgets.proLoadingButton(
           //     onPressed: () {
                  // Handle button press
            //    },
              //  isLoading: true, // Change this to false to hide loading state
              //  child: Text("Loading Button")),
            //BaseWidgets.proAsyncButton(
              //text: 'Click Me',
             // onPressed: () async {
             //   await Future.delayed(Duration(seconds: 1));
           //   },
           // ),
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
