import 'package:animate_do/animate_do.dart';
import 'package:elevarm_ui/elevarm_ui.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:splice/app/data/components/TitleText.dart';
import 'package:splice/app/data/constData/constData.dart';
import 'package:custom_pin_screen/custom_pin_screen.dart';
import 'package:splice/app/routes/app_pages.dart';

import '../controllers/otp_controller.dart';

class OtpView extends GetView<OtpController> {
  const OtpView({super.key});
  @override
  Widget build(BuildContext context) {
    var controller = Get.put(OtpController());
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const ElevarmAvatar(),
                  const SizedBox(
                    height: 20,
                  ),
                  const TitleText(
                    text: "Joseph",
                    fontSize: ElevarmFontSizes.xl,
                  ),
                  FadeInDown(
                    child: Wrap(
                      children: [
                        const Text(
                          "Plese confirm your PIN to access your SPLICE account. Not you?",
                          style: TextStyle(
                            fontWeight: FontWeight.w300,
                            fontSize: 13,
                          ),
                        ),
                        ElevarmLinkPrimaryButton.text(
                          text: "Log Out",
                          onPressed: () => {},
                          buttonThemeData: elevarmLinkPrimaryButton,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  FadeInUp(
                    child: Container(
                      width: 100,
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: primaryColor.withAlpha(100),
                      ),
                      child: Obx(
                        () => Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: List.generate(
                            4,
                            (index) => CircleAvatar(
                              radius: 5,
                              backgroundColor:
                                  controller.pinVal.value.length > index
                                      ? primaryColor
                                      : primaryColor.withAlpha(400),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 80,
            ),
            CustomKeyBoard(
              maxLength: 4,
              specialKeyOnTap: () => {},
              onChanged: (val) => controller.pinVal.value = val,
              onCompleted: (val) => Get.offAllNamed(Routes.BIOMETRIC),
              specialKey: controller.type == null
                  ? const Icon(Icons.fingerprint)
                  : const SizedBox(),
              pinTheme: const PinTheme.defaults(
                textColor: primaryColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
