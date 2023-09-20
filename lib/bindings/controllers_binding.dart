import 'package:device_fusion/controllers/bottom_navigation_controller.dart';
import 'package:device_fusion/controllers/login_controller.dart';
import 'package:device_fusion/controllers/signup_controller.dart';
import 'package:device_fusion/controllers/tab_bar_controller.dart';
import 'package:get/get.dart';

class ControllersBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoginController());
    Get.lazyPut(() => SignUpController());
    Get.lazyPut(() => BottomNavigationController());
    Get.lazyPut(() => TabBarController());
  }
}
