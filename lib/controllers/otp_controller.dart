import 'package:device_fusion/repository/authentication_repository.dart';
import 'package:device_fusion/views/screens/Homepage/home_page.dart';
import 'package:get/get.dart';

class OTPController extends GetxController {
  static OTPController get instance => Get.find();

  // void verifyOTP(String otp) async {
  //   var isVerified = await AuthenticationRepository.instance.verifyOTP(otp);
  //   isVerified ? Get.off(const HomePage()) : Get.back();
  // }
}
