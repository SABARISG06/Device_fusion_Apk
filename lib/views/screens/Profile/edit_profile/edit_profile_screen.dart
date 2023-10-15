import 'dart:io';

import 'package:device_fusion/constants/app_colors.dart';
import 'package:device_fusion/constants/app_dimensions.dart';
import 'package:device_fusion/constants/app_icons.dart';
import 'package:device_fusion/constants/app_pages.dart';
import 'package:device_fusion/controllers/edit_profile_controller.dart';
import 'package:device_fusion/controllers/profile_image_controller.dart';
import 'package:device_fusion/dummy%20data/edit_profile_model.dart';
import 'package:device_fusion/models/user_model.dart';
import 'package:device_fusion/views/widgets/divider_widget.dart';
import 'package:device_fusion/views/widgets/edit_profile/edit_profile_ui_widget.dart';
import 'package:device_fusion/views/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconly/iconly.dart';
import 'package:image_picker/image_picker.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainColor,
      body: Padding(
        padding: EdgeInsets.only(
          left: Dimensions.sizedBoxW10 + 20,
          top: Dimensions.sizedBoxH50 + 10,
          right: Dimensions.sizedBoxW10,
        ),
        child: Column(
          children: [
            Row(
              //! title
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText(
                  text: 'Edit Profile',
                  size: Dimensions.fontSize32 + 2,
                  fontWeight: FontWeight.bold,
                ),
                IconButton(
                  onPressed: () {
                    Get.back();
                  },
                  icon: Icon(
                    Icons.close,
                    color: AppColors.whiteColor,
                    size: Dimensions.fontSize32,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: Dimensions.sizedBoxH30 + 10,
            ),
            Stack(
              clipBehavior: Clip.none,
              children: [
                //!Image
                Obx(
                  () => CircleAvatar(
                    radius: Dimensions.sizedBoxH50 + 20,
                    foregroundImage:
                        ImageController.instance.selectedImagePath.value == ''
                            ? null
                            : FileImage(
                                File(ImageController
                                    .instance.selectedImagePath.value),
                              ),
                  ),
                ),
                Positioned(
                  bottom: -Dimensions.height4,
                  right: -Dimensions.width8,
                  child: CircleAvatar(
                    radius: Dimensions.sizedBoxH20 + 5,
                    backgroundColor: AppColors.primaryColor,
                    child: IconButton(
                      onPressed: () {
                        // log('camera');
                        imageBottomSheet();
                      },
                      icon: Icon(
                        IconlyBold.camera,
                        size: Dimensions.fontSize32,
                        color: AppColors.whiteColor,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(
                top: Dimensions.edgeInsert10 + 30,
                right: Dimensions.edgeInsert10,
              ),
              child: FutureBuilder(
                future: EditProfileController.instance.getUserData(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.done) {
                    if (snapshot.hasData) {
                      UserModel userModel = snapshot.data! as UserModel;
                      return SingleChildScrollView(
                        child: Column(
                          children: [
                            //! Name
                            CustomEditProfileList(
                                headerText: EditProfileData.name,
                                subTitle: userModel.userName!,
                                onTap: () =>
                                    Get.toNamed(AppPages.editNameScreen)),
                            //! Email
                            CustomEditProfileList(
                              headerText: EditProfileData.email,
                              subTitle: userModel.email!,
                              onTap: () {
                                //Todo: Toast message.
                                Fluttertoast.showToast(
                                  gravity: ToastGravity.TOP,
                                  toastLength: Toast.LENGTH_LONG,
                                  timeInSecForIosWeb: 2,
                                  backgroundColor: Colors.red,
                                  msg: 'You\'re unable to update to email',
                                );
                              },
                            ),
                            //!Gender
                            CustomEditProfileList(
                              headerText: EditProfileData.gender,
                              subTitle: userModel.gender!,
                              onTap: () {
                                Get.toNamed(AppPages.editGenderScreen);
                              },
                            ),
                            //!Phone-no
                            CustomEditProfileList(
                              headerText: EditProfileData.phoneNumber,
                              subTitle: userModel.phonenumber!,
                              onTap: () {
                                Get.toNamed(AppPages.editPhoneNumberScreen);
                              },
                            ),
                            //!Password
                            CustomEditProfileList(
                              headerText: EditProfileData.password,
                              subTitle: userModel.password!,
                              onTap: () {
                                Get.toNamed(AppPages.editPasswordScreen);
                              },
                            )
                          ],
                        ),
                      );
                    } else if (snapshot.hasError) {
                      return Center(
                        child: Text(
                          snapshot.error.toString(),
                        ),
                      );
                    } else {
                      return const CircularProgressIndicator();
                    }
                  }
                  return const CircularProgressIndicator();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> imageBottomSheet() {
    return Get.bottomSheet(
      Container(
        height: Dimensions.height150,
        width: double.maxFinite,
        color: AppColors.mainColor,
        child: Column(
          children: [
            SizedBox(
              height: Dimensions.sizedBoxH20,
            ),
            //* Divider
            const CustomDivider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                //! Camera
                Column(
                  children: [
                    SizedBox(
                      height: Dimensions.sizedBoxH10,
                    ),
                    IconButton(
                      onPressed: () {
                        ImageController.instance.getImage(ImageSource.camera);
                      },
                      icon: Icon(
                        IconlyLight.camera,
                        size: Dimensions.iconSize34,
                        color: AppColors.whiteColor,
                      ),
                    ),
                    CustomText(
                      text: 'Camera',
                      fontWeight: FontWeight.w600,
                      color: AppColors.whiteColor,
                      size: Dimensions.fontSize16,
                    ),
                  ],
                ),
                //! Gallery
                Column(
                  children: [
                    SizedBox(
                      height: Dimensions.sizedBoxH10,
                    ),
                    IconButton(
                      onPressed: () {
                        ImageController.instance.getImage(ImageSource.gallery);
                      },
                      icon: Iconify(
                        AppIcons.galleryIcon,
                        size: Dimensions.iconSize34,
                        color: AppColors.whiteColor,
                      ),
                    ),
                    CustomText(
                      text: 'Gallery',
                      fontWeight: FontWeight.w600,
                      color: AppColors.whiteColor,
                      size: Dimensions.fontSize16,
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
