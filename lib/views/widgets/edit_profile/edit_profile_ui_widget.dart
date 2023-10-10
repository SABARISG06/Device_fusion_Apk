import 'package:device_fusion/constants/app_colors.dart';
import 'package:device_fusion/constants/app_dimensions.dart';
import 'package:device_fusion/dummy%20data/edit_profile_model.dart';
import 'package:device_fusion/views/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class CustomEditProfileList extends StatelessWidget {
  const CustomEditProfileList({
    super.key,
    required this.headerText,
    required this.subTitle,
    required this.onTap,
  });

  final EditProfileModel headerText;
  final String subTitle;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          //!title
          title: CustomText(
            text: headerText.title,
            size: Dimensions.fontSize16,
            fontWeight: FontWeight.bold,
          ),
          //!subtitle
          subtitle: CustomText(
            text: subTitle,
            size: Dimensions.fontSize16,
            fontWeight: FontWeight.normal,
          ),
          //!Icon
          trailing: const Icon(
            Icons.chevron_right,
            color: AppColors.whiteColor,
          ),
          onTap: onTap,
        ),
        Divider(
          indent: Dimensions.sizedBoxW10,
          endIndent: Dimensions.sizedBoxW10 + 10,
        ),
      ],
    );
  }
}
