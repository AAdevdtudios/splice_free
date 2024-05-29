import 'package:animate_do/animate_do.dart';
import 'package:elevarm_ui/elevarm_ui.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:splice/app/data/components/CustomInputField.dart';
import 'package:splice/app/data/components/TitleText.dart';
import 'package:splice/app/data/constData/constData.dart';

import '../controllers/forgot_password_controller.dart';

class ForgotPasswordView extends GetView<ForgotPasswordController> {
  const ForgotPasswordView({super.key});
  @override
  Widget build(BuildContext context) {
    var controller = Get.put(ForgotPasswordController());
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              const TitleText(
                text: "Reset your \naccount password",
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
                  hint: "example@example.com",
                  iconData: Icons.mail,
                  controller: controller.email,
                  label: "Email",
                  obSecure: false,
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
              const SizedBox(
                height: 20,
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
    );
  }
}
