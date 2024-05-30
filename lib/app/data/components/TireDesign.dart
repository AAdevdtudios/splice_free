import 'package:elevarm_ui/elevarm_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:splice/app/data/classes/tire_class.dart';
import 'package:splice/app/data/constData/constData.dart';

class TireDesign extends StatelessWidget {
  final TireClass tireClass;

  const TireDesign({super.key, required this.tireClass});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: ElevarmColors.neutral100,
        ),
      ),
      child: Stack(
        fit: StackFit.loose,
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(
                      BoxIcons.bxs_medal,
                      color: Color(tireClass.color),
                    ),
                    Text(
                      tireClass.tire,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                        color: primaryColor,
                      ),
                    )
                  ],
                ),
                const Divider(
                  color: primaryColor,
                  thickness: 3,
                ),
                const SizedBox(
                  height: 20,
                ),
                Text.rich(
                  TextSpan(
                    text: "${tireClass.firstLimitType}\n",
                    style: const TextStyle(
                      fontSize: 13,
                    ),
                    children: [
                      TextSpan(
                        text: tireClass.firstAmount,
                        style: const TextStyle(
                          fontSize: 22,
                          color: primaryColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text.rich(
                  TextSpan(
                    text: "${tireClass.secondLimitType}\n",
                    style: const TextStyle(
                      fontSize: 13,
                    ),
                    children: [
                      TextSpan(
                        text: tireClass.secondAmount,
                        style: const TextStyle(
                          fontSize: 22,
                          color: primaryColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: -10,
            right: -30,
            child: Transform.rotate(
              angle: -.5,
              child: Opacity(
                opacity: .1,
                child: SizedBox(
                  height: 200,
                  width: 200,
                  child: SvgPicture.asset(
                    "assets/images/splice.svg",
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
