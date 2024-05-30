import 'package:elevarm_ui/elevarm_ui.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TopHeadingColumn extends StatelessWidget {
  final String title;
  final TextStyle? style;
  final Color? iconColor;
  final double? iconSize;
  final IconData icon;
  final void Function()? onTap;

  const TopHeadingColumn(
      {super.key,
      required this.title,
      this.style,
      this.iconColor,
      this.iconSize,
      required this.icon,
      this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap ?? () => Get.back(),
      child: Row(
        children: [
          ElevarmIcon(
            icon,
            color: iconColor,
            size: iconSize,
          ),
          Text(
            title,
            style: style ??
                const TextStyle(
                  fontSize: 15,
                ),
          )
        ],
      ),
    );
  }
}
