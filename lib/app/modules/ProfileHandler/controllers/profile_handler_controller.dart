import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileHandlerController extends GetxController {
  String handler = Get.arguments;
  var password = TextEditingController();
  var newPassword = TextEditingController();
  var pinVal = "".obs;
}
