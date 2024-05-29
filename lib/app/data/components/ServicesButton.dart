import 'package:elevarm_ui/elevarm_ui.dart';
import 'package:flutter/material.dart';
import 'package:splice/app/data/constData/constData.dart';

class ServicesButton extends StatelessWidget {
  final String name;
  final IconData icon;
  final void Function()? onTap;

  const ServicesButton(
      {super.key, required this.name, required this.icon, this.onTap});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              color: primaryColor.withAlpha(49),
              borderRadius: BorderRadius.circular(5),
            ),
            padding: const EdgeInsets.all(7),
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                color: primaryColor,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Center(
                child: ElevarmIcon(
                  icon,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            name,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 10,
            ),
          ),
        ],
      ),
    );
  }
}
