import 'package:device_fusion/constants/app_pages.dart';
import 'package:device_fusion/views/screens/Add_Cart/add_to_cart_screen.dart';
import 'package:device_fusion/views/screens/Bottom_Navigation/bottom_navigation.dart';
import 'package:device_fusion/views/screens/Categories/Sub-Categories/headphones_cat_screen.dart';
import 'package:device_fusion/views/screens/Categories/Sub-Categories/laptop_cat_screen.dart';
import 'package:device_fusion/views/screens/Categories/Sub-Categories/other_product_screen.dart';
import 'package:device_fusion/views/screens/Categories/Sub-Categories/phones_cat_screen.dart';
import 'package:device_fusion/views/screens/Categories/Sub-Categories/tablet_cat_screen.dart';
import 'package:device_fusion/views/screens/Categories/Sub-Categories/watch_cat_screen.dart';
import 'package:device_fusion/views/screens/Categories/categories_screen.dart';
import 'package:device_fusion/views/screens/CreateAccount/create_account_screen.dart';
import 'package:device_fusion/views/screens/Favorites/favorites_screen.dart';
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
        page: () => const BottomNavigationScreen(),
      ),
      GetPage(
        name: AppPages.singleProduct,
        page: () => const SingleProductScreen(),
      ),
      GetPage(
        name: AppPages.category,
        page: () => const CategoriesScreen(),
      ),
      GetPage(
        name: AppPages.subCatHeadphones,
        page: () => const CategoryHeadphones(),
      ),
      GetPage(
        name: AppPages.subCatWatches,
        page: () => const CategoryWatch(),
      ),
      GetPage(
        name: AppPages.subCatLaptop,
        page: () => const CategoryLaptops(),
      ),
      GetPage(
        name: AppPages.subCatPhones,
        page: () => const CategoryPhones(),
      ),
      GetPage(
        name: AppPages.subCatTablets,
        page: () => const CategoryTablet(),
      ),
      GetPage(
        name: AppPages.subCatOtherProducts,
        page: () => const RestApiProduct(),
      ),
      GetPage(
        name: AppPages.searchScreen,
        page: () => const SearchScreen(),
      ),
      GetPage(
        name: AppPages.noConnectionScreen,
        page: () => const NoConnectionScreen(),
      ),
      GetPage(
        name: AppPages.favoriteScreen,
        page: () => const MyFavoritesScreen(),
      ),
      GetPage(
        name: AppPages.addToCart,
        page: () => const AddToCart(),
      ),
    ];
  }
}
