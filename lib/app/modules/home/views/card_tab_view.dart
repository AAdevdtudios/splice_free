import 'package:elevarm_ui/elevarm_ui.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:splice/app/data/components/BoxedContainer.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:splice/app/data/constData/constData.dart';
import 'package:splice/app/modules/home/controllers/home_controller.dart';
import 'package:u_credit_card/u_credit_card.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CardTabView extends GetView {
  const CardTabView({super.key});
  @override
  Widget build(BuildContext context) {
    var controller = Get.put(HomeController());
    return Obx(
      () => Scaffold(
        body: BoxedContainer(
          child: Column(
            children: [
              ElevarmTabBar(
                labels: const ["NGN Card", "USD Card"],
                activeIndex: controller.currentView.value,
                onChange: (val) => controller.currentView.value = val,
              ),
              const SizedBox(
                height: 30,
              ),
              Visibility(
                visible: controller.currentView.value == 1
                    ? controller.isVerified.value
                    : true,
                replacement: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Row(
                      children: [
                        Text(
                          "Take Control of Your",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            letterSpacing: 4,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: primaryColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 10,
                      ),
                      child: const Text(
                        "Financial Future",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 3,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "Manage your money, track expenses and invest smarter all in one card",
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    SizedBox(
                      height: 260,
                      child: SvgPicture.asset("assets/svg/card-creation.svg"),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Center(
                      child: SizedBox(
                        width: Get.width / 1.5,
                        child: ElevarmPrimaryButton.text(
                          text: "Create Card",
                          buttonThemeData: elevarmPrimaryButton,
                          onPressed: () {},
                        ),
                      ),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    const CreditCardUi(
                      cardHolderFullName: 'John Doe',
                      cardNumber: '1234567898982812',
                      validThru: '01/24',
                      validFrom: "02/2021",
                      balance: 300,
                      autoHideBalance: true,
                      cardType: CardType.debit,
                      creditCardType: CreditCardType.visa,
                      showBalance: true,
                      currencySymbol: "NGN ",
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    ElevarmViewDetailCard(
                      leadingIconAssetName: EvaIcons.credit_card_outline,
                      title: "View Card details",
                      onTap: (ctx) {},
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    ElevarmViewDetailCard(
                      leadingIconAssetName: LineAwesome.lock_solid,
                      title: "Edit Card pin",
                      onTap: (ctx) {},
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    ElevarmSwitchListTile(
                      title: "Freeze Card",
                      value: false,
                      onChanged: (val) => {},
                      negativeLabel: "",
                      switchSize: ElevarmSwitchSize.sm,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
