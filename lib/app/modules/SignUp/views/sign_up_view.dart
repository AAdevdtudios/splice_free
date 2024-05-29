import 'package:animate_do/animate_do.dart';
import 'package:elevarm_ui/elevarm_ui.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:splice/app/data/components/CustomInputField.dart';
import 'package:splice/app/data/components/TitleText.dart';
import 'package:splice/app/data/constData/constData.dart';
import 'package:splice/app/routes/app_pages.dart';

import '../controllers/sign_up_controller.dart';

class SignUpView extends GetView<SignUpController> {
  const SignUpView({super.key});
  @override
  Widget build(BuildContext context) {
    var controller = Get.put(SignUpController());
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const TitleText(
                  text: "Get Stated 🚀",
                ),
                const SizedBox(
                  height: 10,
                ),
                FadeInUp(
                  child: Row(
                    children: [
                      Expanded(
                        child: CustomInputField(
                          hint: "First name",
                          iconData: Icons.person,
                          controller: controller.firstName,
                          label: "Firstname",
                          obSecure: false,
                        ),
                      ),
                      const SizedBox(
                        width: 3,
                      ),
                      Expanded(
                        child: CustomInputField(
                          hint: "Last name",
                          iconData: Icons.person,
                          controller: controller.lastName,
                          label: "Lastname",
                          obSecure: false,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                FadeInUp(
                  child: CustomInputField(
                    hint: "example@example.com",
                    iconData: Icons.mail,
                    controller: controller.email,
                    label: "Email",
                    obSecure: false,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                FadeInUp(
                  child: CustomInputField(
                    hint: "*******",
                    iconData: Icons.remove_red_eye_rounded,
                    controller: controller.password,
                    label: "Password",
                    obSecure: true,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                FadeInUp(
                  child: SizedBox(
                    width: double.infinity,
                    child: ElevarmPrimaryButton.text(
                      text: 'Sign In',
                      height: 70,
                      buttonThemeData: elevarmPrimaryButton,
                      onPressed: () =>
                          Get.toNamed(Routes.OTP, arguments: "new"),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                FadeInUp(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Already have an account?",
                        style: TextStyle(
                          color: Colors.black87,
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      ElevarmLinkPrimaryButton.text(
                        text: "Sign In",
                        onPressed: () => Get.back(),
                        buttonThemeData: elevarmLinkPrimaryButton,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
