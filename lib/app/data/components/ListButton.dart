import 'package:flutter/material.dart';

class ListButton extends StatelessWidget {
  final String name;
  final IconData icon;
  final void Function()? onTap;

  const ListButton(
      {super.key, required this.name, required this.icon, this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            name,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 17,
              fontWeight: FontWeight.w300,
            ),
          ),
          Icon(
            icon,
            color: Colors.white,
          )
        ],
      ),
    );
  }
}
