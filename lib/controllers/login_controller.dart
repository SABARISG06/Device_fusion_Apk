import 'dart:developer';
import 'package:device_fusion/repository/authentication_repository.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  static LoginController get instance => Get.find();

  String email = '';
  String password = '';
  RxBool isShow = true.obs;
  final loginFormKey = GlobalKey<FormState>();

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void onClose() {
    super.onClose();
    emailController.dispose();
    passwordController.dispose();
  }

  void signInWithEmailAndPassword(email, password) {
    AuthenticationRepository.instance
        .signInWithEmailAndPassword(email, password);
  }

  void isShowToggle() {
    isShow.value = !isShow.value;
  }

  String? isValidEmail(value) {
    if (value!.trim().isEmpty) {
      return 'Enter an email';
    } else if (!RegExp(r'^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$')
        .hasMatch(value)) {
      return 'Please Enter a Valid Email address';
    }
    return null;
  }

  String? isValidPassword(value) {
    if (value == null ||
        value.trim().length < 6 ||
        !RegExp(r'^(?=.*[0-9])(?=.*[!@#$%^&*])').hasMatch(value)) {
      return 'Password must include symbols and numbers';
    }
    return null;
  }

  void clearTextField() {
    emailController.clear();
    passwordController.clear();
  }

  void onLogin() {
    if (loginFormKey.currentState!.validate()) {
      loginFormKey.currentState!.save();
      signInWithEmailAndPassword(email, password);
      log('Email: $email Password: $password');
      Future.delayed(const Duration(seconds: 3), () {
        clearTextField();
      });
    }
  }
}
