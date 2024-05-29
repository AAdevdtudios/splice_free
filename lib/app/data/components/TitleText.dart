import 'package:animate_do/animate_do.dart';
import 'package:elevarm_ui/elevarm_ui.dart';
import 'package:flutter/widgets.dart';
import 'package:splice/app/data/constData/constData.dart';

class TitleText extends StatelessWidget {
  final String text;
  final double? fontSize;

  const TitleText(
      {super.key, required this.text, this.fontSize = ElevarmFontSizes.xl4});

  @override
  Widget build(BuildContext context) {
    return FadeInDown(
      child: Text(
        text.toUpperCase(),
        style: TextStyle(
          color: primaryColor,
          fontSize: fontSize,
          fontWeight: FontWeight.w900,
        ),
      ),
    );
  }
}
