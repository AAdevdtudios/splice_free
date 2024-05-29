import 'package:flutter/material.dart';

class ServicesClass {
  final String name;
  final IconData icon;
  final String routes;
  final String? arguments;

  ServicesClass(
      {required this.name,
      required this.icon,
      required this.routes,
      this.arguments});
}
