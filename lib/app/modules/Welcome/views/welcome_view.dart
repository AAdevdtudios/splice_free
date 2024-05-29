import 'package:animate_do/animate_do.dart';
import 'package:elevarm_ui/elevarm_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';
import 'package:splice/app/data/components/ListTileColumn.dart';
import 'package:splice/app/data/constData/constData.dart';
import 'package:splice/app/routes/app_pages.dart';

import '../controllers/welcome_controller.dart';

class WelcomeView extends GetView<WelcomeController> {
  const WelcomeView({super.key});
  @override
  Widget build(BuildContext context) {
    // Get.put(WelcomeController());
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
                  "assets/images/splice.svg",
                  height: 150,
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Text(
                'Welcome to Splice',
                style: Get.textTheme.displaySmall!.copyWith(
                  fontWeight: FontWeight.w700,
                  color: primaryColor,
                  fontSize: ElevarmBlurSizes.md,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const ListTileColumn(
                title: "Send and Receive",
                icon: Icons.stream_sharp,
                subtitle:
                    "Adding biometric security will ensure that you are the one accessing your account.",
              ),
              const ListTileColumn(
                title: "Virtual Card",
                icon: Icons.add_card_rounded,
                subtitle:
                    "Adding biometric security will ensure that you are the one accessing your account.",
              ),
              const ListTileColumn(
                title: "Earn Rewards",
                icon: Icons.leaderboard_outlined,
                subtitle:
                    "Adding biometric security will ensure that you are the one accessing your account.",
              ),
              const Spacer(),
              FadeInUp(
                child: SizedBox(
                  width: double.infinity,
                  child: ElevarmPrimaryButton.text(
                    text: 'Start',
                    height: 70,
                    buttonThemeData: elevarmPrimaryButton,
                    onPressed: () => Get.toNamed(Routes.HOME),
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
