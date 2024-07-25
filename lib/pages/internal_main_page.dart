// internal_main_page.dart

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:f1_live/utils/helpers.dart';
import 'package:f1_live/pages/home_page.dart';
import 'package:f1_live/pages/live_timings_page.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';


class InternalMainPage extends StatefulWidget {
  const InternalMainPage({super.key});

  @override
  State<InternalMainPage> createState() => _InternalMainPageState();
}

class _InternalMainPageState extends State<InternalMainPage> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    LiveTimingsPage(),
    HomePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: Colors.transparent,
      body: _pages[_selectedIndex],
      bottomNavigationBar: CurvedNavigationBar(
        index: _selectedIndex,
        height: 65.0,
        backgroundColor: Colors.transparent,
        color: F1Red,
        buttonBackgroundColor: F1Red,
        animationCurve: Curves.easeInOut,
        animationDuration: Duration(milliseconds: 200),
        items: <Widget>[
          Icon(CupertinoIcons.bolt_fill, color: F1Black),
          Icon(CupertinoIcons.home, color: F1Black),
          // Icon(CupertinoIcons.settings, color: F1Black),
        ],
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ), // Use the CustomBottomNavBar here
    );
  }
}