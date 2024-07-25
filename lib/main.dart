// main.dart

import 'package:f1_live/pages/home_page.dart';
import 'package:f1_live/pages/internal_main_page.dart';
import 'package:f1_live/pages/live_timings_page.dart';
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
        "/splash": (context) => const SplashScreen(),
        "/": (context) => const InternalMainPage(),
        "/home": (context) => const HomePage(),
        "/live": (context) => const LiveTimingsPage(),
      },
      theme: ThemeData(
        fontFamily: 'SFPro',
      ),
      initialRoute: "/splash",
      debugShowCheckedModeBanner: false,
    );
  }
}