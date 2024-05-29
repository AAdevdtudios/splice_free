import 'package:elevarm_ui/elevarm_ui.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:splice/app/data/components/CustomInputField.dart';
import 'package:splice/app/data/components/TitleText.dart';
import 'package:splice/app/data/constData/constData.dart';
import 'package:animate_do/animate_do.dart';
import 'package:splice/app/routes/app_pages.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(LoginController());
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
                  text: "Sign in \nyour account",
                ),
                const SizedBox(
                  height: 10,
                ),
                FadeInDown(
                  child: const Text(
                    "Cryptocurrency wallet mobile apps available for managing and starting your digital assets",
                    style: TextStyle(
                      fontWeight: FontWeight.w300,
                    ),
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
                  height: 10,
                ),
                FadeInLeft(
                  child: ElevarmLinkPrimaryButton.text(
                    text: "Forgot Password?",
                    onPressed: () => Get.toNamed(Routes.FORGOT_PASSWORD),
                    buttonThemeData: elevarmLinkPrimaryButton,
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
                      onPressed: () => Get.toNamed(Routes.OTP),
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
                        "Dont have an account?",
                        style: TextStyle(
                          color: Colors.black87,
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      ElevarmLinkPrimaryButton.text(
                        text: "Sign Up",
                        onPressed: () => Get.toNamed(Routes.SIGN_UP),
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
