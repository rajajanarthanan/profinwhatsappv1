import 'package:flutter/material.dart';
import 'package:injector/injector.dart';
import 'package:profinwhatsapp/core/base/base_view.dart';
import 'package:profinwhatsapp/core/views/base_widgets/base_widgets.dart';
import 'package:profinwhatsapp/core/views/widgets/login_widgets/login_widget.dart';

class LoginView extends BaseView {
  @override
  Widget buildView(BuildContext context) {
    return MaterialApp(
        title: 'ProFinWhatsapp',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: LoginPage(),
        debugShowCheckedModeBanner: false);
  }


  
}

/*

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final dep = Injector.appInstance;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('Welcome Back!!'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            BaseWidgets.proElevatedButton(
                onPressed: () {}, child: Text("clickMe")),
            BaseWidgets.proTextButton(onPressed: () {}, child: Text("OK")),
          ],
        ),
      ),
    );
  }
}

*/