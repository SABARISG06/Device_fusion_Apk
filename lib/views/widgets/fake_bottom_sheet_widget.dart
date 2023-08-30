import 'package:device_fusion/utils/app_colors.dart';
import 'package:flutter/material.dart';

class CustomFakeBottomSheet extends StatelessWidget {
  const CustomFakeBottomSheet({
    super.key,
    required this.width,
    required this.height,
    required this.child,
    this.decoration = const BoxDecoration(
      color: AppColors.whiteColor,
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(25),
        topRight: Radius.circular(25),
      ),
    ),
  });

  final double width;
  final double height;
  final Widget child;
  final Decoration decoration;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: decoration,
      child: child,
    );
  }
}
