
import 'package:flutter/material.dart';
import 'screens/home_page.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SplashScreen(),
    );
  }
}



class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Column(
        children: [
          //  /TODO Add your image under assets folder
          Image.asset('images/Daryo.png',height: 140,),
          // const Text('Cake app', style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold, color: Colors.white),)
        ],
      ),
      backgroundColor: Colors.white,
      nextScreen:HomePage(

      ) ,
      splashIconSize: 150,
      duration: 3000,
      // splashTransition: SplashTransition.fadeTransition,
      // pageTransitionType: PageTransitionType.leftToRightWithFade,
      // animationDuration: const Duration(seconds: 1),
    );
  }
}
