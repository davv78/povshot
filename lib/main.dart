import 'package:flutter/material.dart';
import 'package:povshot/pages/home.dart';
import 'package:povshot/pages/splash_screen.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:povshot/pages/welcome/welcome_screen.dart';
import 'package:povshot/theme/appTheme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Povshot',
      theme: ThemeData(
      ),
      home: AnimatedSplashScreen(
          splash: Image.asset("assets/images/povshot.png",
          width: 200,
          height: 200,),
          duration: 3000,
          splashTransition: SplashTransition.fadeTransition,
          backgroundColor: MainColor,
          nextScreen: welcomeScreen()),
    );
  }
}
