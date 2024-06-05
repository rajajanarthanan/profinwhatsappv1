import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 7),
    );

    _animation = Tween<double>(begin: 0.0, end: 2.0).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Curves.easeIn, // Use Curves.easeIn from the Curves class
      ),
    );

   

    _animationController.forward();
    
      // After animation completes, navigate to SecondScreen
    _animationController.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (context) => const SecondScreen(),
          ),
        );
      }
    });
  }
  
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
         child : FadeTransition(
          opacity: _animation,
          child: const FlutterLogo(size : 500),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }
}





class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const  Text(
          'Home Page',
          style: TextStyle(
            fontSize : 24,
             fontWeight : FontWeight.bold,
             ), 
        ),
      ),
      body: const Center(
        child: Text(
          'Welcome To Home Page!',
          style : TextStyle(
            fontSize : 24,
             fontWeight : FontWeight.bold,
             ),
             ),
      ),
    );
  }
}