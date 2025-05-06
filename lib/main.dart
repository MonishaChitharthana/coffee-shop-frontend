import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';

import 'HomePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      duration: 3000,
      splash: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'assets/images/splash/splash.jpg',
            fit: BoxFit.cover,
          ),
          Center(
            child: Image.asset(
              'assets/images/splash/logo.png',
              width: 120,
              height: 120,
            ),
          ),
        ],
      ),
      nextScreen: const MyHomePage(),
      splashTransition: SplashTransition.fadeTransition,
      // pageTransitionType: PageTransitionType.fade,
      backgroundColor: Colors.transparent,
    );
  }
}
