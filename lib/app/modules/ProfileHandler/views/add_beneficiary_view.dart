import 'package:flutter/material.dart';

import 'package:get/get.dart';

class AddBeneficiaryView extends GetView {
  const AddBeneficiaryView({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'AddBeneficiaryView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
