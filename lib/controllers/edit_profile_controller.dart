import 'package:device_fusion/models/user_model.dart';
import 'package:device_fusion/repository/User%20Repository/user_repository.dart';
import 'package:device_fusion/repository/authentication_repository.dart';
import 'package:get/get.dart';

class EditProfileController extends GetxController {
  static EditProfileController get instance => Get.find();

  getUserData() {
    //* checking the with email to the current user either we can do other way as well checking the Uid as well
    final email = AuthenticationRepository.instance.firebaseUser.value?.email;
    if (email != null) {
      return UserRepositoryController.instance.readUserDetails(email);
    } else {
      Get.snackbar("title", "message");
    }
  }

  Future<void> updateRecord(UserModel user) async {
    await UserRepositoryController.instance.updateUserRecord(user);
  }
}
