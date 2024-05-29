import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:splice/app/modules/home/views/home_view.dart';
import 'package:splice/app/modules/login/views/login_view.dart';

import '../controllers/handler_controller.dart';

class HandlerView extends GetView<HandlerController> {
  const HandlerView({super.key});
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => controller.loggedIn.value ? const HomeView() : const LoginView(),
    );
  }
}
