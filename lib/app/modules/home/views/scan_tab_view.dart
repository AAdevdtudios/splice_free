import 'package:flutter/material.dart';

import 'package:get/get.dart';

class ScanTabView extends GetView {
  const ScanTabView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ScanTabView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'ScanTabView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
