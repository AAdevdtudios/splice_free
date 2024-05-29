import 'package:elevarm_ui/elevarm_ui.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:splice/app/data/constData/constData.dart';

class ActivitiesSection extends StatelessWidget {
  const ActivitiesSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Activities",
          style: Get.textTheme.titleLarge,
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(6),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: secondColor,
                    ),
                    child: Column(
                      children: [
                        const Text.rich(
                          TextSpan(
                            text: "Split payment\n",
                            children: [
                              TextSpan(
                                text: "With friends",
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  color: primaryColor,
                                ),
                              ),
                            ],
                          ),
                          style: TextStyle(
                            fontSize: 11,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                          width: double.infinity,
                          child: ElevarmPrimaryButton.text(
                            text: "Split bill",
                            onPressed: () {},
                            buttonThemeData: elevarmPrimaryButton,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    width: double.infinity,
                    height: 100,
                    padding: const EdgeInsets.all(6),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: secondColor,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Rewards",
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            color: primaryColor,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const SizedBox(
                          child: Column(
                            children: [
                              Text.rich(
                                TextSpan(
                                  text: "Visa Survey \n",
                                  children: [
                                    TextSpan(
                                      text:
                                          "Complete this survey and get 200 worth bonus with topping",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w300,
                                      ),
                                    ),
                                  ],
                                  style: TextStyle(
                                    fontSize: 9,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: List.generate(
                            3,
                            (index) => Container(
                              decoration: BoxDecoration(
                                color: index == 0
                                    ? primaryColor
                                    : thirdColor.withAlpha(200),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              margin: const EdgeInsets.only(right: 3),
                              height: 10,
                              width: 10,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              width: 5,
            ),
            Expanded(
              child: Container(
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: secondColor,
                ),
                padding: const EdgeInsets.only(top: 6, bottom: 6),
                child: const Column(
                  children: [
                    Text.rich(
                      TextSpan(
                        text: "Send money\n",
                        children: [
                          TextSpan(
                            text: "to saved account",
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              color: primaryColor,
                            ),
                          ),
                        ],
                      ),
                      style: TextStyle(
                        fontSize: 11,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
