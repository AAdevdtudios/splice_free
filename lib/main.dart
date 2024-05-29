import 'package:flutter/material.dart';
import 'package:elevarm_ui/elevarm_ui.dart';
import 'package:get/get.dart';
import 'package:splice/app/data/theme/lightMode.dart';

import 'app/routes/app_pages.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  ElevarmFontFamilies.init();
  runApp(
    GetMaterialApp(
      title: "Application",
      initialRoute: AppPages.INITIAL,
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: lightTheme,
      getPages: AppPages.routes,
    ),
  );
}
