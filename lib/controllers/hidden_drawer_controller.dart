import 'package:device_fusion/constants/app_pages.dart';
import 'package:device_fusion/repository/authentication_repository.dart';
import 'package:get/get.dart';

class HiddenController extends GetxController {
  static HiddenController get instance => Get.find();
  RxDouble xOffset = 0.0.obs;
  RxDouble yOffset = 0.0.obs;
  RxDouble scaleFactor = 1.0.obs;
  RxBool isDrawerOpen = false.obs;

  @override
  void onInit() {
    closeDrawer();
    super.onInit();
  }

  void openDrawer() {
    xOffset.value = 200.0;
    yOffset.value = 200.0;
    scaleFactor.value = 0.6;
    isDrawerOpen.value = true;
  }

  void closeDrawer() {
    xOffset.value = 0.0;
    yOffset.value = 0.0;
    scaleFactor.value = 1.0;
    isDrawerOpen.value = false;
  }

  void toggleDrawer() {
    isDrawerOpen.value = !isDrawerOpen.value;
    if (isDrawerOpen.value) {
      openDrawer();
    } else {
      closeDrawer();
    }
  }

  void switchingPage(items) {
    switch (items.title) {
      case 'Basket':
        Get.toNamed(AppPages.addToCart);
        break;
      case 'Favorites':
        Get.toNamed(AppPages.favoriteScreen);
        break;
      case 'Orders':
        Get.toNamed(AppPages.checkOutScreen);
        break;
      case 'Settings':
        Get.toNamed(AppPages.noConnectionScreen);
        break;
      case 'Logout':
        AuthenticationRepository.instance.logout();
        break;
      default:
        Get.toNamed(AppPages.profileScreen);
        break;
    }
  }
}
