import 'dart:developer';

import 'package:device_fusion/repository/expections/email_password_failure.dart';
import 'package:device_fusion/repository/expections/login_exception.dart';
import 'package:device_fusion/utils/app_colors.dart';
import 'package:device_fusion/views/screens/Bottom_Navigation/bottom_navigation.dart';
import 'package:device_fusion/views/screens/Login/login_screen.dart';
import 'package:device_fusion/views/screens/OnBoarding/splash_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class AuthenticationRepository extends GetxController {
  static AuthenticationRepository get instance => Get.find();

  //* Create FirebaseAuth instance
  final _auth = FirebaseAuth.instance;

  //* create Firebase user model

  late Rx<User?> firebaseUser;
  @override
  void onReady() {
    Future.delayed(const Duration(seconds: 3));
    firebaseUser = Rx<User?>(_auth.currentUser);
    firebaseUser.bindStream(_auth.userChanges());
    ever(firebaseUser, _setInitialScreen);
    super.onReady();
  }

  _setInitialScreen(User? user) {
    user == null
        ? Get.offAll(() => const SplashScreen())
        : Get.off(() => const BottomNavigationScreen());
  }

  //! Create a account.
  Future<void> createUserWithEmailAndPassword(
      String email, String password) async {
    try {
      await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      firebaseUser.value != null
          ? Get.offAll(() =>
              const BottomNavigationScreen()) //Todo: Need to change back to login
          : Get.to(() => const SplashScreen());
      Get.snackbar(
        email,
        'Your email added successfully',
        snackPosition: SnackPosition.TOP,
        duration: const Duration(seconds: 3),
        backgroundColor: AppColors.mainColor,
        colorText: AppColors.whiteColor,
      );
      log('Data Added Successfully');
    } on FirebaseAuthException catch (e) {
      createAccountAuthError(e);
    }
  }

//!Login Auth
  Future<void> signInWithEmailAndPassword(email, password) async {
    try {
      await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
      log('Login Successfully');
    } on FirebaseAuthException catch (e) {
      loginAuthError(e);
    }
  }

  Future<void> logout() async {
    await _auth.signOut();
    Get.offAll(() => const LoginScreen());
  }
  //!PhoneNo. Auth.

  // void phoneAuthentication(String phoneNo) async {
  //   await _auth.verifyPhoneNumber(
  //       phoneNumber: phoneNo,
  //       verificationCompleted: (credential) async {
  //         await _auth.signInWithCredential(credential);
  //       },
  //       verificationFailed: (e) {
  //         if (e.code == 'invalid-phoneNumber') {
  //           Get.snackbar('Error', 'Phone number is not valid');
  //         } else {
  //           Get.snackbar('Error', 'Something went wrong.Try again later');
  //         }
  //       },
  //       codeSent: (verificationId, resendToken) {
  //         this.verificationId.value = verificationId;
  //       },
  //       codeAutoRetrievalTimeout: (verificationId) {
  //         this.verificationId.value = verificationId;
  //       });
  // }
  // //!verifyOTP

  // Future<bool> verifyOTP(String otp) async {
  //   var credentials = await _auth.signInWithCredential(
  //       PhoneAuthProvider.credential(
  //           verificationId: verificationId.value, smsCode: otp));
  //   return credentials.user != null ? true : false;
  // }
}
