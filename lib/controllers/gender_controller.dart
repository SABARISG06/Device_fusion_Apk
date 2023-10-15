import 'package:device_fusion/models/user_model.dart';
import 'package:device_fusion/repository/User%20Repository/user_repository.dart';
import 'package:device_fusion/repository/authentication_repository.dart';
import 'package:get/get.dart';

class GenderController extends GetxController {
  static GenderController get instance => Get.find();
  RxString genderText = ''.obs;

  Future<void> onUpdateMyGender() async {
    String updatedGender = genderText.value;

    final email = AuthenticationRepository.instance.firebaseUser.value?.email;

    //* Fetch the user details
    UserModel user =
        await UserRepositoryController.instance.readUserDetails(email!);

    //* Update the gender value
    user.gender = updatedGender;
    await UserRepositoryController.instance.updateUserRecord(user);
  }
}
