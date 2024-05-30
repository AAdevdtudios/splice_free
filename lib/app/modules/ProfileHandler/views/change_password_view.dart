import 'package:animate_do/animate_do.dart';
import 'package:elevarm_ui/elevarm_ui.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:splice/app/data/components/BoxedContainer.dart';
import 'package:splice/app/data/components/CustomInputField.dart';
import 'package:splice/app/data/components/TitleText.dart';
import 'package:splice/app/data/components/TopHeadingColumn.dart';
import 'package:splice/app/data/constData/constData.dart';
import 'package:splice/app/modules/ProfileHandler/controllers/profile_handler_controller.dart';

class ChangePasswordView extends GetView {
  const ChangePasswordView({super.key});
  @override
  Widget build(BuildContext context) {
    var controller = Get.put(ProfileHandlerController());
    return Scaffold(
      body: BoxedContainer(
        scrollPhysics: const NeverScrollableScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TopHeadingColumn(
              title: "Change Password",
              icon: Icons.chevron_left,
            ),
            const SizedBox(
              height: 20,
            ),
            const TitleText(
              text: "Change your \naccount password",
              fontSize: ElevarmFontSizes.xl,
            ),
            const SizedBox(
              height: 10,
            ),
            FadeInDown(
              child: const Text(
                "Input your email address account to receive a reset link",
                style: TextStyle(
                  fontWeight: FontWeight.w300,
                  fontSize: 10,
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            FadeInUp(
              child: CustomInputField(
                hint: "********",
                iconData: Icons.lock,
                controller: controller.password,
                label: "Old Password",
                obSecure: true,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            FadeInUp(
              child: CustomInputField(
                hint: "********",
                iconData: Icons.lock,
                controller: controller.newPassword,
                label: "New Password",
                obSecure: true,
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            FadeInUp(
              child: SizedBox(
                width: double.infinity,
                child: ElevarmPrimaryButton.text(
                  text: 'Continue',
                  height: 70,
                  buttonThemeData: elevarmPrimaryButton,
                  onPressed: () {},
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
