import 'package:flutter/material.dart';

class BoxedContainer extends StatelessWidget {
  final Widget child;
  final ScrollPhysics? scrollPhysics;
  const BoxedContainer({
    super.key,
    required this.child,
    this.scrollPhysics,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        physics: scrollPhysics,
        padding: const EdgeInsets.symmetric(
          vertical: 15,
          horizontal: 10,
        ),
        child: child,
      ),
    );
  }
}
