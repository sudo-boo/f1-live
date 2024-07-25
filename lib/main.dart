// main.dart

import 'package:f1_live/pages/home_page.dart';
import 'package:f1_live/pages/splash_screen.dart';
import 'package:flutter/material.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/": (context) => const SplashScreen(),
        "/home": (context) => const HomePage(),
      },
      theme: ThemeData(
        fontFamily: 'SFPro',
      ),
      initialRoute: "/",
      debugShowCheckedModeBanner: false,
    );
  }
}