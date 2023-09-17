import 'package:device_fusion/constants/app_pages.dart';
import 'package:device_fusion/views/screens/CreateAccount/create_account_screen.dart';
import 'package:device_fusion/views/screens/Homepage/home_page.dart';
import 'package:device_fusion/views/screens/Login/login_screen.dart';
import 'package:device_fusion/views/screens/NoConnection/no_connection_screen.dart';
import 'package:device_fusion/views/screens/OnBoarding/choose_language_screen.dart';
import 'package:device_fusion/views/screens/OnBoarding/splash_screen.dart';
import 'package:device_fusion/views/screens/Phonenumber/otp_verification_screen.dart';
import 'package:device_fusion/views/screens/Search/search_screen.dart';
import 'package:device_fusion/views/screens/Single_Product_temp/singleproduct_screen.dart';
import 'package:get/get.dart';

class AppRoutes {
  AppRoutes._();

  // static final AppRoutes _instance = AppRoutes._();

  // static AppRoutes get instance => _instance;

//
  static List<GetPage> getPages() {
    return [
      GetPage(
        name: AppPages.splashScreen,
        page: () => const SplashScreen(),
      ),
      GetPage(
        name: AppPages.languageScreen,
        page: () => const ChooseLangugage(),
      ),
      GetPage(
        name: AppPages.loginScreen,
        page: () => const LoginScreen(),
      ),
      GetPage(
        name: AppPages.createAccountScreen,
        page: () => const CreateAccount(),
      ),
      GetPage(
        name: AppPages.otpScreen,
        page: () => const OTPVerificationScreen(),
      ),
      GetPage(
        name: AppPages.homeScreen,
        page: () => const HomePage(),
      ),
      GetPage(
        name: AppPages.productScreen,
        page: () => const SingleProductScreen(),
      ),
      GetPage(
        name: AppPages.searchScreen,
        page: () => const SearchScreen(),
      ),
      GetPage(
        name: AppPages.noConnectionScreen,
        page: () => const NoConnectionScreen(),
      ),
    ];
  }
}
