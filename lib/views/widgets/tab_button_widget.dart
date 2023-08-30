import 'package:device_fusion/utils/app_colors.dart';
import 'package:device_fusion/utils/app_dimensions.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTabBar extends StatelessWidget {
  const CustomTabBar({super.key});

  static const listItems = [
    'Wearable',
    'Laptops',
    'Headphones',
    'Phones',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: Dimensions.edgeInsert30),
      height: Dimensions.height35,
      width: Dimensions.width340,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: listItems.length,
        itemBuilder: (context, index) => Padding(
          padding: EdgeInsets.all(Dimensions.edgeInsert10 - 2),
          child: InkWell(
            onTap: () {},
            child: Text(
              listItems[index],
              style: GoogleFonts.raleway(
                color: AppColors.whiteColor,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
