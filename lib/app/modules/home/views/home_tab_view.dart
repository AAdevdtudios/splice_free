import 'package:elevarm_ui/elevarm_ui.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:splice/app/data/components/BalanceCard.dart';
import 'package:splice/app/data/components/BoxedContainer.dart';
import 'package:splice/app/data/components/ServicesButton.dart';
import 'package:splice/app/data/components/TransactionListTile.dart';
import 'package:splice/app/data/components/UserDetail.dart';
import 'package:splice/app/data/constData/constData.dart';

class HomeTabView extends GetView {
  const HomeTabView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BoxedContainer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const UserDetail(),
                IconButton.filledTonal(
                  onPressed: () {},
                  icon: const Icon(
                    AntDesign.bell_outline,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const BalanceCard(
              cardType: CardType.doubleButton,
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              "Make Payment",
              style: Get.textTheme.titleSmall,
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: homeServices
                  .map(
                    (e) => ServicesButton(
                      name: e.name,
                      icon: e.icon,
                      onTap: () {},
                    ),
                  )
                  .toList(),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: primaryColor.withAlpha(20),
                borderRadius: BorderRadius.circular(10),
              ),
              padding: const EdgeInsets.only(
                left: 15,
                bottom: 10,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Rewards",
                        style: Get.textTheme.bodyLarge!.copyWith(
                          fontWeight: FontWeight.bold,
                          color: primaryColor,
                        ),
                      ),
                      Container(
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(100),
                          ),
                          color: primaryColor,
                        ),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 30,
                          vertical: 5,
                        ),
                        child: const Center(
                          child: Text(
                            "Rules",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                      top: 10,
                      bottom: 10,
                    ),
                    child: Divider(),
                  ),
                  const Text.rich(
                    TextSpan(
                      text: "Visa Survey \n",
                      children: [
                        TextSpan(
                          text:
                              "Complete this survey and get 200 worth bonus with topping\n",
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        TextSpan(
                          text: "Tap to continue",
                          style: TextStyle(
                            fontSize: 10,
                          ),
                        ),
                      ],
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w800,
                        color: primaryColor,
                      ),
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
                        height: 5,
                        width: 5,
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "Transactions",
              style: Get.textTheme.titleSmall,
            ),
            const SizedBox(
              height: 10,
            ),
            const TransactionListTile(
              time: '14:20',
              name: 'Airtime (MTN)',
              date: 'Sept-09-2024',
              amount: '-200',
              type: 'card',
              colorType: "remove",
            ),
          ],
        ),
      ),
    );
  }
}
