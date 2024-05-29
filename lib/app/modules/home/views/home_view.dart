import 'package:flutter/material.dart';

import 'package:persistent_bottom_nav_bar_v2/persistent_bottom_nav_bar_v2.dart';
import 'package:get/get.dart';
import 'package:splice/app/data/constData/constData.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(HomeController());
    return PersistentTabView(
      tabs: homeTabs
          .map(
            (e) => PersistentTabConfig(
              screen: e.screens,
              item: ItemConfig(
                title: e.title,
                iconSize: 22,
                activeColorSecondary:
                    e.title == "Scan" ? Colors.white : primaryColor,
                activeForegroundColor: primaryColor,
                inactiveForegroundColor:
                    e.title == "Scan" ? Colors.white : Colors.grey.shade600,
                inactiveIcon: Icon(
                  e.icon,
                ),
                icon: Icon(
                  e.activeIcon,
                  color: e.title == "Scan" ? Colors.white : primaryColor,
                ),
              ),
            ),
          )
          .toList(),
      controller: controller.persist,
      resizeToAvoidBottomInset: true,
      navBarBuilder: (nav) => Style15BottomNavBar(
        navBarConfig: nav,
      ),
    );
  }
}
