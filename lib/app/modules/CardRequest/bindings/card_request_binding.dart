import 'package:get/get.dart';

import '../controllers/card_request_controller.dart';

class CardRequestBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CardRequestController>(
      () => CardRequestController(),
    );
  }
}
