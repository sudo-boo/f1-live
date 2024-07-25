// splash_screen.dart

import 'package:flutter/material.dart';
import 'package:f1_live/utils/helpers.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(milliseconds: 1200), () {
      Navigator.pushReplacementNamed(context, '/home');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF28282b),
      body: Center(
        child: Image.asset(
          'assets/images/splash.png',
          height: screenHeight(context),
        ),
      ),
    );
  }
}