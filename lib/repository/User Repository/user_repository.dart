import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:device_fusion/models/user_model.dart';
import 'package:get/get.dart';

class UserRepositoryController extends GetxController {
  static UserRepositoryController get instance => Get.find();

//! Create a User
  void createUser(UserModel user) async {
    final createUser = FirebaseFirestore.instance.collection('Users').doc();
    user.id = createUser.id;
    final json = user.toJson();
    await createUser
        .set(json)
        .whenComplete(
          () => Get.rawSnackbar(
            title: 'Success',
            message: 'Your account has been created',
            duration: const Duration(seconds: 4),
          ),
        )
        .catchError((error) {
      //* Handle errors and display an error toast message
      Get.rawSnackbar(
        title: 'Error',
        message: 'Something went wrong. Try again',
        duration: const Duration(seconds: 4),
      );
      log(error.toString());
      return error;
    });
  }

  //! Fetch the Record from Db

  Future<UserModel> readUserDetails(String email) async {
    final snapshot = await FirebaseFirestore.instance
        .collection('Users')
        .where('email', isEqualTo: email)
        .get();
    final userData =
        snapshot.docs.map((doc) => UserModel.fromJson(doc.data())).single;
    return userData;
  }

  //! Update the record

  Future<void> updateUserRecord(UserModel user) async {
    await FirebaseFirestore.instance
        .collection('Users')
        .doc(user.id)
        .update(user.toJson());
  }
}
