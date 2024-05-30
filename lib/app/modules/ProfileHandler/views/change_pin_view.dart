import 'package:elevarm_ui/elevarm_ui.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:custom_pin_screen/custom_pin_screen.dart';
import 'package:splice/app/data/components/TitleText.dart';
import 'package:splice/app/data/components/TopHeadingColumn.dart';
import 'package:splice/app/data/constData/constData.dart';
import 'package:splice/app/modules/ProfileHandler/controllers/profile_handler_controller.dart';

class ChangePinView extends GetView {
  const ChangePinView({super.key});
  @override
  Widget build(BuildContext context) {
    var controller = Get.put(ProfileHandlerController());
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 15,
            horizontal: 10,
          ),
          child: Column(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const TopHeadingColumn(
                      title: "Change Pin",
                      icon: Icons.chevron_left,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const TitleText(
                      text: "Change your \naccount Pin",
                      fontSize: ElevarmFontSizes.xl,
                      useAnimation: false,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "Please confirm your PIN to change pin",
                      style: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 13,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
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
                  ],
                ),
              ),
              CustomKeyBoard(
                maxLength: 4,
                specialKeyOnTap: () => {},
                onChanged: (val) => controller.pinVal.value = val,
                onCompleted: (val) => {},
                pinTheme: const PinTheme.defaults(
                  textColor: primaryColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
