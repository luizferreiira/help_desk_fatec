import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'pages/home.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Help Desk Fatec',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        accentColor: Color(0xff44545c),
      ),
      home: AnimatedSplashScreen(
        splashIconSize: 250,
        splash: Image.asset(
          "assets/images/helpdesk_logo.png",
        ), nextScreen: MyHome(),
        splashTransition: SplashTransition.fadeTransition,
      ),
    );
  }
}
