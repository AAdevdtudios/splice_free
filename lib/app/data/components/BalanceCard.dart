import 'package:elevarm_ui/elevarm_ui.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:splice/app/data/components/ListButton.dart';
import 'package:splice/app/data/constData/constData.dart';

enum CardType { doubleButton, threeButton }

class BalanceCard extends StatelessWidget {
  final CardType? cardType;

  const BalanceCard({
    super.key,
    this.cardType = CardType.threeButton,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(
        horizontal: 30,
        vertical: 15,
      ),
      decoration: BoxDecoration(
        color: primaryColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Account Balance",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w300,
                ),
              ),
              InkWell(
                onTap: () {},
                child: const Text(
                  "2,000",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(
              top: 20,
              bottom: 5,
            ),
            child: ElevarmDivider(),
          ),
          Row(
            children: [
              Expanded(
                flex: 2,
                child: ListButton(
                  icon: EvaIcons.diagonal_arrow_right_up,
                  name: "Send",
                  onTap: () {},
                ),
              ),
              cardType == CardType.threeButton
                  ? Expanded(
                      flex: 3,
                      child: Container(
                        decoration: const BoxDecoration(
                          border: Border(
                            left: BorderSide(color: Colors.white),
                            right: BorderSide(color: Colors.white),
                          ),
                        ),
                        child: ListButton(
                          icon: EvaIcons.diagonal_arrow_left_down,
                          name: "Receive",
                          onTap: () {},
                        ),
                      ),
                    )
                  : const SizedBox(
                      height: 20,
                      child: VerticalDivider(
                        color: Colors.white,
                        thickness: .5,
                      ),
                    ),
              Expanded(
                flex: 2,
                child: ListButton(
                  icon: cardType == CardType.threeButton
                      ? LineAwesome.wallet_solid
                      : EvaIcons.diagonal_arrow_left_down,
                  name: cardType == CardType.threeButton ? "Bills" : "Receive",
                  onTap: () {},
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
