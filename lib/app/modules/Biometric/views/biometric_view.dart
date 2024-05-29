import 'package:animate_do/animate_do.dart';
import 'package:elevarm_ui/elevarm_ui.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:splice/app/data/constData/constData.dart';
import 'package:splice/app/routes/app_pages.dart';

import '../controllers/biometric_controller.dart';

class BiometricView extends GetView<BiometricController> {
  const BiometricView({super.key});
  @override
  Widget build(BuildContext context) {
    var controller = Get.put(BiometricController());
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 30,
              ),
              Center(
                child: SvgPicture.asset(
                  "assets/images/biometricIcon.svg",
                  height: 200,
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Text(
                'Activate Biometric',
                style: Get.textTheme.displaySmall!.copyWith(
                  fontWeight: FontWeight.w700,
                  color: primaryColor,
                  fontSize: ElevarmBlurSizes.md,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Adding biometric security will ensure that you are the one accessing your account',
                style: Get.textTheme.displaySmall!.copyWith(
                  fontWeight: FontWeight.w700,
                  color: Colors.grey.shade400,
                  fontSize: 11,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 20,
              ),
              Obx(
                () => SwitchListTile(
                  thumbIcon: MaterialStateProperty.all(
                    const Icon(
                      Icons.fingerprint,
                    ),
                  ),
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(
                      color: Colors.black12,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  title: const Text("Device"),
                  subtitle: const Text("Use Device Authentication"),
                  value: controller.activate.value,
                  onChanged: (val) => controller.activate.toggle(),
                ),
              ),
              const Spacer(),
              FadeInUp(
                child: SizedBox(
                  width: double.infinity,
                  child: ElevarmPrimaryButton.text(
                    text: 'Next',
                    height: 70,
                    buttonThemeData: elevarmPrimaryButton,
                    onPressed: () => Get.toNamed(Routes.WELCOME),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
