import 'package:elevarm_ui/elevarm_ui.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:splice/app/data/classes/service_class.dart';
import 'package:splice/app/data/classes/tab_data.dart';
import 'package:splice/app/data/classes/transaction_list_class.dart';
import 'package:splice/app/modules/home/views/card_tab_view.dart';
import 'package:splice/app/modules/home/views/history_tab_view.dart';
import 'package:splice/app/modules/home/views/home_tab_view.dart';
import 'package:splice/app/modules/home/views/profile_tab_view.dart';
import 'package:splice/app/modules/home/views/scan_tab_view.dart';

const primaryColor = Color.fromARGB(255, 0, 84, 71);
const thirdColor = Color(0x0099bbb6);
const secondColor = Color(0xffF2F2F2);

const elevarmPrimaryButton = ElevarmPrimaryButtonThemeData(
  primaryColor: primaryColor,
);
const elevarmLinkPrimaryButton = ElevarmLinkButtonThemeData(
  onPrimaryColor: primaryColor,
);
const elevarmVariantLinkPrimaryButton = ElevarmLinkButtonThemeData(
  onPrimaryColor: Colors.white,
);

// List Items
List<TabData> homeTabs = [
  TabData(
    activeIcon: Icons.home,
    icon: Iconsax.home_1_outline,
    title: "Home",
    screens: const HomeTabView(),
  ),
  TabData(
    activeIcon: FontAwesome.credit_card,
    icon: Clarity.credit_card_line,
    title: "Card",
    screens: const CardTabView(),
  ),
  TabData(
    activeIcon: AntDesign.scan_outline,
    icon: AntDesign.scan_outline,
    title: "Scan",
    screens: const ScanTabView(),
  ),
  TabData(
    activeIcon: LineAwesome.history_solid,
    icon: Bootstrap.clock_history,
    title: "History",
    screens: const HistoryTabView(),
  ),
  TabData(
    activeIcon: BoxIcons.bxs_user,
    icon: AntDesign.user_outline,
    title: "Profile",
    screens: const ProfileTabView(),
  ),
];

List<ServicesClass> homeServices = [
  ServicesClass(
    name: "Airtime",
    icon: EvaIcons.phone,
    routes: "",
  ),
  ServicesClass(
    name: "Tv",
    icon: HeroIcons.tv,
    routes: "",
  ),
  ServicesClass(
    name: "Betting",
    icon: BoxIcons.bx_baseball,
    routes: "",
  ),
  ServicesClass(
    name: "More",
    icon: ZondIcons.navigation_more,
    routes: "",
  ),
];
List<ServicesClass> services = [
  ServicesClass(
    name: "Airtime",
    icon: EvaIcons.phone,
    routes: "",
  ),
  ServicesClass(
    name: "Tv",
    icon: HeroIcons.tv,
    routes: "",
  ),
  ServicesClass(
    name: "Betting",
    icon: BoxIcons.bx_baseball,
    routes: "",
  ),
];

List<TransactionListClass> transactionList = [
  TransactionListClass(
    dateTime: DateTime(
      2024,
      5,
      27,
      11,
      21,
    ),
    name: 'Transfer to Mike',
    amount: '2000',
    type: 'transfer',
    colorType: 'remove',
  ),
  TransactionListClass(
    dateTime: DateTime(
      2024,
      5,
      13,
      6,
      21,
    ),
    name: 'Transfer to Mike',
    amount: '1000',
    type: 'airtime',
    colorType: 'remove',
  ),
  TransactionListClass(
    dateTime: DateTime(
      2024,
      2,
      13,
      6,
      21,
    ),
    name: 'Transfer to Mike',
    amount: '1000',
    type: 'transfer',
    colorType: 'add',
  ),
  TransactionListClass(
    dateTime: DateTime(
      2024,
      2,
      11,
      6,
      21,
    ),
    name: 'Card Withdraw',
    amount: '2000',
    type: 'card',
    colorType: 'remove',
  ),
];
