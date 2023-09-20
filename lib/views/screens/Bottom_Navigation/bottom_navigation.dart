import 'package:device_fusion/constants/app_colors.dart';
import 'package:device_fusion/constants/app_dimensions.dart';
import 'package:device_fusion/controllers/bottom_navigation_controller.dart';
import 'package:device_fusion/controllers/hidden_drawer_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomNavigationScreen extends StatelessWidget {
  const BottomNavigationScreen({super.key});

  final Color _selectedColor = AppColors.primaryColor;
  final Color _unselectedColor = AppColors.greyColor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () {
          final isDrawerOpened = HiddenController.instance.isDrawerOpen.value;

          return AbsorbPointer(
            absorbing: isDrawerOpened,
            child: BottomNavigationController.instance.screens[
                BottomNavigationController.instance.bottomCurrentIndex.value],
          );
        },
      ),
      bottomNavigationBar: Obx(
        () {
          final isDrawerOpened = HiddenController.instance.isDrawerOpen.value;
          return AbsorbPointer(
            absorbing: isDrawerOpened,
            child: BottomNavigationBar(
              showUnselectedLabels: false,
              currentIndex:
                  BottomNavigationController.instance.bottomCurrentIndex.value,
              onTap: (index) {
                BottomNavigationController.instance.bottomCurrentIndex.value =
                    index;
              },
              items: <BottomNavigationBarItem>[
                _buildNavItem(Icons.home, 'Home', 0),
                _buildNavItem(Icons.category, 'Category', 1),
                _buildNavItem(Icons.shopping_cart_outlined, 'Cart', 2),
                _buildNavItem(
                    Icons.supervised_user_circle_outlined, 'Profile', 3),
              ],
            ),
          );
        },
      ),
    );
  }

  BottomNavigationBarItem _buildNavItem(
      IconData icon, String label, int index) {
    return BottomNavigationBarItem(
      backgroundColor: AppColors.mainColor,
      icon: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: BottomNavigationController.instance.bottomCurrentIndex.value ==
                  index
              ? _selectedColor
              : Colors.transparent,
        ),
        padding: EdgeInsets.all(Dimensions.edgeInsert10 - 2),
        child: Icon(
          icon,
          size: Dimensions.iconSize50 - 25,
          color: BottomNavigationController.instance.bottomCurrentIndex.value ==
                  index
              ? Colors.white
              : _unselectedColor,
        ),
      ),
      label: label,
    );
  }
}
