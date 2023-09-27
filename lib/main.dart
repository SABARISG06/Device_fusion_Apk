import 'package:device_fusion/constants/app_routes.dart';
import 'package:device_fusion/controllers/api_product_controller.dart';
import 'package:device_fusion/controllers/bottom_navigation_controller.dart';
import 'package:device_fusion/controllers/hidden_drawer_controller.dart';
import 'package:device_fusion/controllers/login_controller.dart';
import 'package:device_fusion/controllers/price_sheet_controller.dart';
import 'package:device_fusion/controllers/signup_controller.dart';
import 'package:device_fusion/controllers/tab_bar_controller.dart';
import 'package:device_fusion/repository/authentication_repository.dart';
import 'package:device_fusion/views/screens/OnBoarding/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  Get.put(LoginController());
  Get.put(SignUpController());
  Get.put(HiddenController());
  Get.put(BottomNavigationController());
  Get.put(TabBarController());
  Get.put(ApiProductController());
  Get.put(SortingListController());

  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform)
      .then(
    (value) => Get.put(AuthenticationRepository()),
  );
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const SplashScreen(),
      debugShowCheckedModeBanner: false,
      getPages: AppRoutes.getPages(),
    );
  }
}
