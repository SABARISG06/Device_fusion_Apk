import 'package:device_fusion/constants/app_pages.dart';
import 'package:device_fusion/constants/app_routes.dart';
import 'package:device_fusion/controllers/login_controller.dart';
import 'package:device_fusion/controllers/signup_controller.dart';
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
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform)
      .then(
    (value) => Get.put(
      AuthenticationRepository(),
    ),
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
        fontFamily: 'Raleway',
      ),
      home: const SplashScreen(),
      debugShowCheckedModeBanner: false,
      initialRoute: AppPages.loginScreen,
      getPages: AppRoutes.getPages(),
    );
  }
}
