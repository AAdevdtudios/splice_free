import 'package:flutter/material.dart';

class CustomSettingsItem extends StatelessWidget {
  final String? title;
  final String? subtitle;
  final IconData icon;
  final double? iconSize;
  final Widget? trailingIcon;
  final TextStyle? titleStyle;
  final TextStyle? subtitleStyle;
  final EdgeInsets? padding;
  final Widget? titleWidget;
  final void Function()? onTap;

  const CustomSettingsItem(
      {super.key,
      this.title,
      this.subtitle,
      required this.icon,
      this.iconSize,
      this.trailingIcon,
      this.titleStyle,
      this.subtitleStyle,
      this.padding,
      this.titleWidget,
      this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: padding ?? const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Icon(
                      icon,
                      size: iconSize ?? 22,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  title == null
                      ? SizedBox(
                          child: titleWidget,
                        )
                      : Text.rich(
                          TextSpan(
                            text: "$title \n",
                            style: titleStyle ??
                                const TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                ),
                            children: [
                              TextSpan(
                                text: subtitle,
                                style: subtitleStyle ??
                                    const TextStyle(
                                      fontSize: 11,
                                      fontWeight: FontWeight.w300,
                                    ),
                              ),
                            ],
                          ),
                        ),
                ],
              ),
              SizedBox(
                child: trailingIcon,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
