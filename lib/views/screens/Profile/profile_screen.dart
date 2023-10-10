import 'dart:developer';
import 'package:device_fusion/constants/app_colors.dart';
import 'package:device_fusion/constants/app_dimensions.dart';
import 'package:device_fusion/controllers/edit_profile_controller.dart';
import 'package:device_fusion/models/profile_model.dart';
import 'package:device_fusion/models/user_model.dart';
import 'package:device_fusion/views/screens/Profile/edit_profile/edit_profile_screen.dart';
import 'package:device_fusion/views/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainColor,
      body: Container(
        margin: EdgeInsets.only(
          left: Dimensions.sizedBoxW10 + 20,
          top: Dimensions.sizedBoxH50 + 10,
          right: Dimensions.sizedBoxW10 + 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomText(
              text: 'My Profile',
              size: Dimensions.fontSize32 + 2,
              fontWeight: FontWeight.bold,
            ),
            SizedBox(
              height: Dimensions.sizedBoxH30 + 10,
            ),
            Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.center,
              children: [
                //!Dp and address card
                SizedBox(
                  height: Dimensions.height180,
                  width: Dimensions.width350,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        Dimensions.borderRadius20,
                      ),
                    ),
                    child: FutureBuilder<UserModel>(
                      future: EditProfileController.instance.getUserData(),
                      builder: (context, snapshot) {
                        if (snapshot.connectionState == ConnectionState.done) {
                          if (snapshot.hasData && snapshot.data != null) {
                            UserModel userModel = snapshot.data as UserModel;
                            return Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                  height: Dimensions.sizedBoxH50 + 5,
                                ),
                                //! UserName
                                CustomText(
                                  text: userModel.userName!,
                                  size: Dimensions.fontSize18,
                                  fontWeight: FontWeight.w600,
                                  color: AppColors.blackColor,
                                ),
                                SizedBox(
                                  height: Dimensions.sizedBoxH10 - 5,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Icon(IconlyLight.location),
                                    SizedBox(
                                      width: Dimensions.sizedBoxW10 - 5,
                                    ),
                                    //! Address
                                    SizedBox(
                                      width: Dimensions.width210,
                                      child: CustomText(
                                        text: ProfileData.listofData.address,
                                        size: Dimensions.fontSize16,
                                        fontWeight: FontWeight.normal,
                                        color: AppColors.blackColor,
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            );
                          }
                        }
                        return const Center(child: Text('Network Problem'));
                      },
                    ),
                  ),
                ),
                Positioned(
                  top: -Dimensions.sizedBoxH30,
                  child: CircleAvatar(
                    radius: Dimensions.sizedBoxH50,
                    backgroundImage:
                        AssetImage(ProfileData.listofData.userImage),
                  ),
                )
              ],
            ),
            SizedBox(
              height: Dimensions.sizedBoxH10,
            ),
            //!List of profile items.
            Expanded(
              child: ListView.builder(
                itemCount: ProfileData.listofData.profileItems!.length,
                itemBuilder: (context, index) => Card(
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(Dimensions.borderRadius20),
                  ),
                  margin: EdgeInsets.symmetric(
                      vertical: Dimensions.edgeInsert10 + 5),
                  child: ListTile(
                    splashColor: Colors.transparent,
                    onTap: () {
                      log(ProfileData.listofData.profileItems![index]);
                      Get.to(() => const EditProfileScreen());
                    },
                    title: CustomText(
                      text: ProfileData.listofData.profileItems![index],
                      size: Dimensions.fontSize18,
                      fontWeight: FontWeight.w700,
                      color: AppColors.blackColor,
                    ),
                    trailing: Icon(
                      Icons.chevron_right,
                      size: Dimensions.sizedBoxH30,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
