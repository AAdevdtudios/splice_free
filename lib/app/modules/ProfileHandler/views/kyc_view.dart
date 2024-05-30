import 'package:animate_do/animate_do.dart';
import 'package:elevarm_ui/elevarm_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:splice/app/data/components/BoxedContainer.dart';
import 'package:splice/app/data/components/TireDesign.dart';
import 'package:splice/app/data/components/TopHeadingColumn.dart';
import 'package:splice/app/data/constData/constData.dart';

class KycView extends GetView {
  const KycView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BoxedContainer(
        child: FadeInUp(
          child: Column(
            children: [
              const TopHeadingColumn(
                title: "Account Information",
                icon: Icons.chevron_left,
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: ElevarmColors.neutral100,
                  ),
                ),
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text.rich(
                          TextSpan(
                            text: "Splice Account Number\n",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: Get.textTheme.bodySmall!.color!
                                  .withAlpha(120),
                            ),
                            children: [
                              TextSpan(
                                text: "12345667890",
                                style: TextStyle(
                                  color: Get.textTheme.bodySmall!.color,
                                ),
                              ),
                            ],
                          ),
                        ),
                        ElevarmFilledBadge(
                          onTap: () async {
                            await Clipboard.setData(
                              const ClipboardData(text: "12345667890"),
                            );
                            Get.snackbar(
                              "Copied",
                              "Account as been copied",
                              snackPosition: SnackPosition.BOTTOM,
                              backgroundColor: ElevarmColors.success200,
                              margin: const EdgeInsets.only(
                                bottom: 10,
                                left: 20,
                                right: 20,
                              ),
                              padding: const EdgeInsets.symmetric(
                                horizontal: 20,
                                vertical: 10,
                              ),
                              colorText: ElevarmColors.success,
                            );
                          },
                          contentPadding: const EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 5,
                          ),
                          variant: ElevarmBadgeVariant.success,
                          child: const Text("Copy"),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text.rich(
                      TextSpan(
                        text: "Bank\n",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Get.textTheme.bodySmall!.color!.withAlpha(120),
                        ),
                        children: [
                          TextSpan(
                            text: "Wema",
                            style: TextStyle(
                              color: Get.textTheme.bodySmall!.color,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text.rich(
                      TextSpan(
                        text: "Account Name\n",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Get.textTheme.bodySmall!.color!.withAlpha(120),
                        ),
                        children: [
                          TextSpan(
                            text: "John Doe",
                            style: TextStyle(
                              color: Get.textTheme.bodySmall!.color,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text.rich(
                          TextSpan(
                            text: "BVN no\n",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: Get.textTheme.bodySmall!.color!
                                  .withAlpha(120),
                            ),
                            children: [
                              TextSpan(
                                text: "**** *** 2122",
                                style: TextStyle(
                                  color: Get.textTheme.bodySmall!.color,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Text.rich(
                          TextSpan(
                            text: "NIN\n",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: Get.textTheme.bodySmall!.color!
                                  .withAlpha(120),
                            ),
                            children: [
                              TextSpan(
                                text: "**** *** 2122",
                                style: TextStyle(
                                  color: Get.textTheme.bodySmall!.color,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text.rich(
                      TextSpan(
                        text: "Current Tire\n",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Get.textTheme.bodySmall!.color!.withAlpha(120),
                        ),
                        children: [
                          TextSpan(
                            text: "Tire 3",
                            style: TextStyle(
                              color: Get.textTheme.bodySmall!.color,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const ElevarmDivider(
                child: Text("KYC Benefits"),
              ),
              const SizedBox(
                height: 10,
              ),
              const Center(
                child: Text(
                  "The higher the level, the higher the transition limit",
                  style: TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 11,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: tireItems
                      .map(
                        (e) => Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SizedBox(
                            width: 300,
                            child: TireDesign(
                              tireClass: e,
                            ),
                          ),
                        ),
                      )
                      .toList(),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: Get.width,
                child: ElevarmPrimaryButton.text(
                  text: "Upgrade Tire",
                  onPressed: () {},
                  buttonThemeData: elevarmPrimaryButton,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
