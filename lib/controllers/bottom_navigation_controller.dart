import 'package:device_fusion/views/screens/Add_Cart/add_to_cart_screen.dart';
import 'package:device_fusion/views/screens/Categories/categories_screen.dart';
import 'package:device_fusion/views/screens/Homepage/home_page.dart';
import 'package:device_fusion/views/screens/Profile/profile_screen.dart';
import 'package:get/get.dart';

class BottomNavigationController extends GetxController {
  static BottomNavigationController get instance => Get.find();

  RxInt bottomCurrentIndex = 0.obs;

  final screens = [
    const HomePage(),
    const CategoriesScreen(),
    const AddToCart(),
    const ProfileScreen(),
  ];
}
