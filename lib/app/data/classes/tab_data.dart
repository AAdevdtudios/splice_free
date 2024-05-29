import 'package:flutter/cupertino.dart';

class TabData {
  final String? title;
  final IconData activeIcon;
  final IconData icon;
  final Widget screens;

  TabData(
      {this.title,
      required this.activeIcon,
      required this.screens,
      required this.icon});
}
