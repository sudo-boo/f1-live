// lib/app_drawer.dart

import 'package:f1_live/utils/helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          _buildDrawerItem(
            context,
            text: '',
            topPadding: 50,
            onTap: () {},
          ),
          _buildDrawerItem(
            context,
            icon: CupertinoIcons.home,
            text: 'Home',
            onTap: () {
              Navigator.pushReplacementNamed(context, '/home');
            },
          ),
          _buildDrawerItem(
            context,
            icon: CupertinoIcons.settings,
            text: 'Settings',
            onTap: () {
              Navigator.pushNamed(context, '/settings');
            },
          ),
          _buildDrawerItem(
            context,
            icon: CupertinoIcons.info,
            text: 'About',
            onTap: () {
              // Handle about navigation here
            },
          ),
        ],
      ),
      backgroundColor: Colors.white,
    );
  }

  Widget _buildDrawerItem(BuildContext context,
      {IconData? icon, required String text, required VoidCallback onTap, double topPadding = 0.0}) {
    return Padding(
      padding: EdgeInsets.fromLTRB(20, topPadding, 10, 5),
      child: Container(
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(color: Colors.red, width: 1),
          ),
        ),
        child: CupertinoListTile(
          leading: icon != null ? Icon(icon, color: F1Black) : null,
          title: Text(text, style: TextStyle(color: F1Black)),
          onTap: onTap,
        ),
      ),
    );
  }
}
