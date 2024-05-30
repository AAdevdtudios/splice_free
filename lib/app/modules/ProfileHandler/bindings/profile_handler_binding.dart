import 'package:get/get.dart';
import '../controllers/profile_handler_controller.dart';

class ProfileHandlerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProfileHandlerController>(
      () => ProfileHandlerController(),
    );
  }
}
