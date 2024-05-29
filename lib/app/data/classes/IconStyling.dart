import 'package:flutter/material.dart';

class IconStyling {
  Color? iconsColor;
  bool? withBackground;
  Color? backgroundColor;
  double? borderRadius;
  double? size;

  IconStyling({
    iconsColor = Colors.white,
    withBackground = true,
    backgroundColor = Colors.blue,
    borderRadius = 8,
  })  : iconsColor = iconsColor,
        withBackground = withBackground,
        backgroundColor = backgroundColor,
        borderRadius = double.parse(borderRadius!.toString());
}
