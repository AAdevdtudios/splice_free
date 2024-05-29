import 'package:elevarm_ui/elevarm_ui.dart';
import 'package:flutter/material.dart';

class TransactionListTile extends StatelessWidget {
  final String name;
  final String date;
  final String amount;
  final String time;
  final String type;
  final String colorType;
  final void Function()? onTap;

  const TransactionListTile({
    super.key,
    required this.name,
    required this.date,
    required this.amount,
    required this.time,
    required this.colorType,
    required this.type,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    late IconData icon;
    switch (type.toLowerCase()) {
      case "airtime":
        icon = Icons.phone;
        break;
      case "data":
        icon = Icons.network_cell;
        break;
      case "tv":
        icon = Icons.tv;
        break;
      case "card":
        icon = Icons.credit_card;
        break;
      default:
        icon = Icons.swipe_left_alt_outlined;
        break;
    }
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                ElevarmIconRipple(
                  iconAssetName: icon,
                  variant: colorType == "remove"
                      ? ElevarmIconRippleVariant.danger
                      : colorType == "warning"
                          ? ElevarmIconRippleVariant.warning
                          : ElevarmIconRippleVariant.success,
                ),
                const SizedBox(
                  width: 10,
                ),
                Text.rich(
                  TextSpan(
                    text: "$name\n",
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                    children: [
                      TextSpan(
                        text: date,
                        style: const TextStyle(
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Text.rich(
              TextSpan(
                text:
                    "${colorType.toLowerCase() == "add" ? "+" : "-"}$amount \n",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: colorType.toLowerCase() == "add"
                      ? ElevarmColors.success
                      : ElevarmColors.danger,
                ),
                children: [
                  TextSpan(
                    text: time,
                    style: const TextStyle(
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ],
              ),
              textAlign: TextAlign.end,
            ),
          ],
        ),
      ),
    );
  }
}
