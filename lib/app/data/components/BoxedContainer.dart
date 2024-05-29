import 'package:flutter/material.dart';

class BoxedContainer extends StatelessWidget {
  final Widget child;
  const BoxedContainer({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(
          vertical: 15,
          horizontal: 10,
        ),
        child: child,
      ),
    );
  }
}
