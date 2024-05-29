import 'package:get/get.dart';

import '../controllers/handler_controller.dart';

class HandlerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HandlerController>(
      () => HandlerController(),
    );
  }
}
