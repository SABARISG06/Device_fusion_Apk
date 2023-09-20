import 'package:device_fusion/constants/app_colors.dart';
import 'package:device_fusion/constants/app_dimensions.dart';
import 'package:device_fusion/controllers/hidden_drawer_controller.dart';
import 'package:device_fusion/dummy%20data/hidden_dummy_data.dart';
import 'package:device_fusion/views/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.hiddenColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      left: Dimensions.borderRadius20,
                      right: Dimensions.borderRadius20),
                  child: CircleAvatar(
                    radius: Dimensions.sizedBoxH50 + 5,
                  ),
                ),
                CustomText(
                  text: 'Good Morning',
                  size: Dimensions.fontSize18 + 4,
                  fontWeight: FontWeight.w500,
                )
              ],
            ),
          ),
          SizedBox(
            child: Column(
              children: HiddenItems.listOfHidden
                  .map(
                    (items) => ListTile(
                        contentPadding: EdgeInsets.only(
                            top: Dimensions.borderRadius20,
                            left: Dimensions.edgeInsert40,
                            bottom: Dimensions.borderRadius20),
                        leading: items.icon,
                        title: Text(
                          items.title,
                          style: GoogleFonts.raleway(
                            color: AppColors.whiteColor,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        onTap: () {
                          HiddenController.instance.switchingPage(items);
                        }),
                  )
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }
}
