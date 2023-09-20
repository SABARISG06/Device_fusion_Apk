import 'package:device_fusion/constants/app_colors.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

void createAccountAuthError(FirebaseAuthException e) {
  String errorMessage;
  switch (e.code) {
    case 'weak-password':
      errorMessage = 'The password provided is too weak.';
      break;
    case 'email-already-in-use':
      errorMessage = 'The account already exists for that email.';
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
