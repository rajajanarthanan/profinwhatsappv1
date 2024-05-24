// TODO Implement this library.


// import views.dart

import 'package:flutter/material.dart';
import 'package:injector/injector.dart';
import 'package:profinwhatsapp/core/base/base_view.dart';
import 'package:profinwhatsapp/core/views/base_widgets/base_widgets.dart';



class SampleTestView extends BaseView {
  @override
  Widget buildView(BuildContext context) {
    return MaterialApp(
      title: 'Demo View',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const SampleHomePage(title: 'Demo Flutter Page'),
    );
  }
}

class SampleHomePage extends StatefulWidget {
  const SampleHomePage({super.key, required this.title});
  
  final String title;

  @override
  State<SampleHomePage> createState() => _SampleHomePageState();
}

class _SampleHomePageState extends State<SampleHomePage> {
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
            text,
          ],
        ),
      ),
         floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}

