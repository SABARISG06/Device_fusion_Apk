import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class ImageController extends GetxController {
  static ImageController get instance => Get.find();
  RxString selectedImagePath = ''.obs;

  Future<void> getImage(ImageSource imageSource) async {
    try {
      final pickedImage = await ImagePicker().pickImage(
        source: imageSource,
        imageQuality: 50,
        maxWidth: 150,
      );
      if (pickedImage != null) {
        selectedImagePath.value = pickedImage.path;
        return;
      }
    } catch (e) {
      print('ImagePicker Error: $e');
      Get.snackbar('Error', 'An error occurred while selecting an image.');
    }
  }
}
