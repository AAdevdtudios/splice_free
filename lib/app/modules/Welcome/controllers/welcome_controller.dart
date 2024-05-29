import 'package:elevarm_ui/elevarm_ui.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:splice/app/data/constData/constData.dart';

class WelcomeController extends GetxController {
  @override
  void onInit() {
    showModel();
    super.onInit();
  }

  showModel() {
    Future.delayed(
        const Duration(
          seconds: 2,
        ), () {
      Get.bottomSheet(
        ElevarmBottomSheet(
          childrenCrossAxisAlignment: CrossAxisAlignment.center,
          title: "Activate Notification",
          onPressedClose: () => Get.back(),
          minChildSize: .5,
          initialChildSize: .65,
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevarmAvatar(
                  emptyIconAssetName: Icons.notifications_active_rounded,
                  emptyIconColor: Colors.white,
                  backgroundColor: primaryColor,
                  size: 60,
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Enable push notifications about completed transfer, card usage, updates and announcement",
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Expanded(
                  child: ElevarmTertiaryPrimaryButton.text(
                    text: "Not now",
                    onPressed: () => {},
                  ),
                ),
                Expanded(
                  child: ElevarmPrimaryButton.text(
                    text: "Enable",
                    onPressed: () => {},
                    buttonThemeData: elevarmPrimaryButton,
                  ),
                ),
              ],
            )
          ],
        ),
      );
    });
  }
}
