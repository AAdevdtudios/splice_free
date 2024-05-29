import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

class UserDetail extends StatelessWidget {
  const UserDetail({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        CircleAvatar(
          child: Icon(
            EvaIcons.person,
          ),
        ),
        SizedBox(
          width: 5,
        ),
        Text.rich(
          TextSpan(
            text: "Welcome,\n",
            children: [
              TextSpan(
                text: "Joseph",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black54),
        ),
      ],
    );
  }
}
