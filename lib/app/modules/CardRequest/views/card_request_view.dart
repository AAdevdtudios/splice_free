import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/card_request_controller.dart';

class CardRequestView extends GetView<CardRequestController> {
  const CardRequestView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CardRequestView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'CardRequestView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
