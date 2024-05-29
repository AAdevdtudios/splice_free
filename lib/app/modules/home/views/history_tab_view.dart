import 'package:elevarm_ui/elevarm_ui.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:splice/app/data/components/BoxedContainer.dart';
import 'package:splice/app/data/components/TransactionListTile.dart';
import 'package:splice/app/data/constData/constData.dart';

class HistoryTabView extends GetView {
  const HistoryTabView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BoxedContainer(
        child: Column(
          children: [
            ElevarmTabBar(
              labels: const ["All", "NGN Card", "USD Card"],
              activeIndex: 0,
              onChange: (val) => {},
            ),
            const SizedBox(
              height: 20,
            ),
            ListView(
              shrinkWrap: true,
              children: transactionList
                  .map(
                    (element) => TransactionListTile(
                      name: element.name,
                      date:
                          "${element.dateTime.month}-${element.dateTime.day}-${element.dateTime.year}",
                      amount: element.amount,
                      time:
                          "${element.dateTime.hour}:${element.dateTime.minute}",
                      colorType: element.colorType,
                      type: element.type,
                      onTap: () => {},
                    ),
                  )
                  .toList(),
            ),
            // StickyGroupedListView<TransactionListClass, DateTime>(
            //   elements: transactionList,
            //   shrinkWrap: true,
            //   groupBy: (element) => DateTime(
            //     element.dateTime.year,
            //     element.dateTime.month,
            //     element.dateTime.day,
            //   ),
            //   itemBuilder: (context, element) => TransactionListTile(
            //     name: element.name,
            //     date:
            //         "${element.dateTime.month}-${element.dateTime.day}-${element.dateTime.year}",
            //     amount: element.amount,
            //     time: "${element.dateTime.hour}:${element.dateTime.minute}",
            //     colorType: element.colorType,
            //     type: element.type,
            //   ),
            //   groupSeparatorBuilder: (element) => const Text(
            //     "",
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
