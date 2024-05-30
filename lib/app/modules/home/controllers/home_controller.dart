import 'package:get/get.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent_bottom_nav_bar_v2.dart';

class HomeController extends GetxController {
  var persist = PersistentTabController();
  // For Card Tab
  var currentView = 0.obs;
  var isVerified = false.obs;

  // For Profile Tab
  var notificationVal = true.obs;
  var biometric = true.obs;
}
