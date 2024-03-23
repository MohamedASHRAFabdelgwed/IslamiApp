import 'package:flutter/material.dart';

import 'home.dart';


class SplashScreen extends StatefulWidget {
  static const String route = "splash_screen";
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 2), (){
      Navigator.pushReplacementNamed(context, HomeScreen.route);
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Image.asset("assets/splash.png"),
    );
  }
}