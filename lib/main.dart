import 'package:flutter/material.dart';
import 'package:islami/home.dart';
import 'package:islami/splash_screen.dart';
import 'package:islami/tabs/hadeth/hadeth-screen.dart';
import 'package:islami/tabs/quran/swra_screen.dart';
import 'Utilits/dark_them.dart';
import 'Utilits/light_them.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
      theme: LightThem.light,
      darkTheme: DarkThem.dark,
      themeMode: ThemeMode.dark,
      initialRoute: SplashScreen.route,
      routes: {
        SplashScreen.route: (context) => const HomeScreen(),
        HomeScreen.route: (context) => const HomeScreen(),
        SwraScreen.route: (context) => const SwraScreen(),
        HadethScreen.route: (context) => const HadethScreen()
      },
    );
  }
}
