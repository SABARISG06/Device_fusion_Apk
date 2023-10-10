import 'dart:developer';
import 'package:device_fusion/models/user_model.dart';
import 'package:device_fusion/repository/User%20Repository/user_repository.dart';
import 'package:device_fusion/repository/authentication_repository.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpController extends GetxController {
  static SignUpController get instance => Get.find();
  String userName = '';
  String email = '';
  String password = '';
  String confirmPassword = '';
  String phoneNumber = '';
  RxBool isShow = true.obs;
  final signupFormKey = GlobalKey<FormState>();
  final userNameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  final phoneNumberController = TextEditingController();

  @override
  void onClose() {
    userNameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    phoneNumberController.dispose();

    super.onClose();
  }

  void createUserWithEmailAndPassword(email, password) {
    AuthenticationRepository.instance
        .createUserWithEmailAndPassword(email, password);
  }

  void isShowToggle() {
    isShow.value = !isShow.value;
  }

  String? isUserName(value) {
    if (value == null || value.trim().isEmpty) {
      return 'User Name is required';
    } else if (value.length < 4) {
      return 'User Name should be 4 characters or more';
    }
    return null;
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

  String? isValidConfirmPassword(value) {
    if (value == null || value.trim().isEmpty) {
      return 'Confirm Password is required';
    } else if (value != passwordController.text) {
      return 'Password do not match';
    }
    return null;
  }

  void clearTextField() {
    emailController.clear();
    passwordController.clear();
    userNameController.clear();
    confirmPasswordController.clear();
  }

  void onCreateAnAccount() {
    if (signupFormKey.currentState!.validate()) {
      signupFormKey.currentState!.save();
      createUserWithEmailAndPassword(email, password);
      addUserToFirebase();
      log('Email: $email Password: $password');
      Future.delayed(const Duration(seconds: 3), () {
        clearTextField();
      });
    }
  }

  //!Firebase to add createuserdata

  void addUserToFirebase() {
    final user = UserModel(
      userName: userNameController.text.trim(),
      email: emailController.text.trim(),
      password: passwordController.text.trim(),
    );
    UserRepositoryController.instance.createUser(user);
  }
}
