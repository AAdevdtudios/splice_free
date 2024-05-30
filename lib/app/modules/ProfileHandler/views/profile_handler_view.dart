import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:splice/app/modules/ProfileHandler/views/add_beneficiary_view.dart';
import 'package:splice/app/modules/ProfileHandler/views/change_password_view.dart';
import 'package:splice/app/modules/ProfileHandler/views/change_pin_view.dart';
import 'package:splice/app/modules/ProfileHandler/views/kyc_view.dart';

import '../controllers/profile_handler_controller.dart';

class ProfileHandlerView extends GetView<ProfileHandlerController> {
  const ProfileHandlerView({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(ProfileHandlerController());
    return Scaffold(
      body: switch (controller.handler) {
        "kyc" => const KycView(),
        "password" => const ChangePasswordView(),
        "pin" => const ChangePinView(),
        "beneficiary" => const AddBeneficiaryView(),
        String() => throw UnimplementedError(),
      },
    );
  }
}
