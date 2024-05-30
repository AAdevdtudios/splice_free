import 'package:elevarm_ui/elevarm_ui.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:splice/app/data/classes/IconStyling.dart';
import 'package:splice/app/data/components/BoxedContainer.dart';
import 'package:splice/app/data/components/CustomBigUserCard.dart';
import 'package:splice/app/data/components/CustomSettingGroup.dart';
import 'package:splice/app/data/components/CustomSettingUi.dart';
import 'package:splice/app/data/components/CustomSettingsItem.dart';
import 'package:splice/app/data/constData/constData.dart';
import 'package:splice/app/modules/home/controllers/home_controller.dart';
import 'package:splice/app/routes/app_pages.dart';

class ProfileTabView extends GetView {
  const ProfileTabView({super.key});
  @override
  Widget build(BuildContext context) {
    var controller = Get.put(HomeController());
    return Obx(
      () => Scaffold(
        body: BoxedContainer(
          child: Column(
            children: [
              CustomBigUserCard(
                userName: 'David Brayan',
                cardRadius: 20,
                userMoreInfo: const SizedBox(),
                userProfilePic: const AssetImage("assets/images/NFc.png"),
                backgroundColor: primaryColor,
                cardActionWidget: CustomSettingsItem(
                  icon: BoxIcons.bx_id_card,
                  onTap: () {},
                  title: "Account Verification",
                  subtitle: "Your account is verified",
                  trailingIcon: ElevarmFilledBadge.text(
                    "Verified",
                    variant: ElevarmBadgeVariant.success,
                  ),
                ),
              ),
              CustomSettingGroup(
                settingsGroupTitle: "Account",
                items: [
                  CustomSettingUi(
                    icons: Bootstrap.clock_history,
                    title: "Transaction History",
                    iconStyle: IconStyling(
                      iconsColor: primaryColor,
                      backgroundColor: Colors.white,
                    ),
                    titleStyle: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                    subtitleStyle: const TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.w300,
                    ),
                    onTap: () => controller.persist.jumpToTab(3),
                    trailing: const Icon(
                      Icons.chevron_right_sharp,
                    ),
                  ),
                  CustomSettingUi(
                    icons: Bootstrap.speedometer2,
                    title: "Account Limits",
                    iconStyle: IconStyling(
                      iconsColor: primaryColor,
                      backgroundColor: Colors.white,
                    ),
                    titleStyle: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                    subtitleStyle: const TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.w300,
                    ),
                    onTap: () =>
                        Get.toNamed(Routes.PROFILE_HANDLER, arguments: "kyc"),
                    subtitle: "View your transaction limit",
                    trailing: const Icon(
                      Icons.chevron_right_sharp,
                    ),
                  ),
                  CustomSettingUi(
                    icons: Bootstrap.bell,
                    title: "Notification",
                    iconStyle: IconStyling(
                      iconsColor: primaryColor,
                      backgroundColor: Colors.white,
                    ),
                    titleStyle: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                    subtitleStyle: const TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.w300,
                    ),
                    onTap: () => controller.notificationVal.toggle(),
                    subtitle: "Enable push notifications for info",
                    trailing: Switch.adaptive(
                      value: controller.notificationVal.value,
                      onChanged: (val) =>
                          controller.notificationVal.value = val,
                    ),
                  ),
                ],
              ),
              CustomSettingGroup(
                settingsGroupTitle: "Security",
                items: [
                  CustomSettingUi(
                    icons: Icons.password_outlined,
                    title: "Change Password",
                    subtitle: "Change application password",
                    iconStyle: IconStyling(
                      iconsColor: primaryColor,
                      backgroundColor: Colors.white,
                    ),
                    titleStyle: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                    subtitleStyle: const TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.w300,
                    ),
                    onTap: () => Get.toNamed(Routes.PROFILE_HANDLER,
                        arguments: "password"),
                    trailing: const Icon(
                      Icons.chevron_right_sharp,
                    ),
                  ),
                  CustomSettingUi(
                    icons: Clarity.lock_line,
                    title: "Change Pin",
                    subtitle: "Change transaction and app pin",
                    iconStyle: IconStyling(
                      iconsColor: primaryColor,
                      backgroundColor: Colors.white,
                    ),
                    titleStyle: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                    subtitleStyle: const TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.w300,
                    ),
                    onTap: () =>
                        Get.toNamed(Routes.PROFILE_HANDLER, arguments: "pin"),
                    trailing: const Icon(
                      Icons.chevron_right_sharp,
                    ),
                  ),
                  CustomSettingUi(
                    icons: Icons.fingerprint,
                    title: "Biometric",
                    iconStyle: IconStyling(
                      iconsColor: primaryColor,
                      backgroundColor: Colors.white,
                    ),
                    titleStyle: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                    subtitleStyle: const TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.w300,
                    ),
                    onTap: () => controller.biometric.toggle(),
                    trailing: Switch.adaptive(
                      value: controller.biometric.value,
                      onChanged: (val) => controller.biometric.value = val,
                    ),
                  ),
                ],
              ),
              CustomSettingGroup(
                settingsGroupTitle: "Finance",
                items: [
                  CustomSettingUi(
                    icons: Iconsax.user_add_outline,
                    title: "Add Beneficiary",
                    subtitle: "Add new beneficiary",
                    iconStyle: IconStyling(
                      iconsColor: primaryColor,
                      backgroundColor: Colors.white,
                    ),
                    titleStyle: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                    subtitleStyle: const TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.w300,
                    ),
                    onTap: () => Get.toNamed(Routes.PROFILE_HANDLER,
                        arguments: "beneficiary"),
                    trailing: const Icon(
                      Icons.chevron_right_sharp,
                    ),
                  ),
                ],
              ),
              CustomSettingGroup(
                settingsGroupTitle: "Support",
                items: [
                  CustomSettingUi(
                    icons: Icons.headset_mic,
                    title: "Customer Service center",
                    iconStyle: IconStyling(
                      iconsColor: primaryColor,
                      backgroundColor: Colors.white,
                    ),
                    titleStyle: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                    subtitleStyle: const TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.w300,
                    ),
                    onTap: () {},
                    trailing: const Icon(
                      Icons.chevron_right_sharp,
                    ),
                  ),
                  CustomSettingUi(
                    icons: Bootstrap.star_fill,
                    title: "Rate Us",
                    iconStyle: IconStyling(
                      iconsColor: primaryColor,
                      backgroundColor: Colors.white,
                    ),
                    titleStyle: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                    subtitleStyle: const TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.w300,
                    ),
                    onTap: () {},
                    trailing: const Icon(
                      Icons.chevron_right_sharp,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
