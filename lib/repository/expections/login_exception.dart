import 'package:device_fusion/constants/app_colors.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

void loginAuthError(FirebaseAuthException e) {
  String errorMessage;
  switch (e.code) {
    case 'user-not-found':
      errorMessage = 'No user found for that email.';
      break;
    case 'wrong-password':
      errorMessage = 'Wrong password provided for that user.';
      break;
    case 'invalid-email':
      errorMessage = 'The email address is badly formatted.';
      break;
    default:
      errorMessage = 'An unknown error occurred: ${e.code}';
  }
  Get.snackbar(
    e.code,
    errorMessage,
    snackPosition: SnackPosition.TOP,
    duration: const Duration(seconds: 3),
    backgroundColor: AppColors.mainColor,
    colorText: AppColors.whiteColor,
  );
}
