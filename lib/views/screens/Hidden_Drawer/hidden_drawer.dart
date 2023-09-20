import 'package:device_fusion/constants/app_dimensions.dart';
import 'package:device_fusion/controllers/hidden_drawer_controller.dart';
import 'package:device_fusion/views/screens/Bottom_Navigation/bottom_navigation.dart';
import 'package:device_fusion/views/widgets/hidden_drawer_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HiddenDrawer extends StatelessWidget {
  const HiddenDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const DrawerWidget(),
          WillPopScope(
            onWillPop: () async {
              if (HiddenController.instance.isDrawerOpen.value) {
                HiddenController.instance.closeDrawer();
                return false;
              } else {
                return true;
              }
            },
            child: Obx(
              () => AnimatedContainer(
                duration: const Duration(milliseconds: 500),
                transform: Matrix4.translationValues(
                  HiddenController.instance.xOffset.value,
                  HiddenController.instance.yOffset.value,
                  0,
                )..scale(HiddenController.instance.scaleFactor.value),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(
                    HiddenController.instance.isDrawerOpen.value
                        ? Dimensions.edgeInsert40
                        : 0,
                  ),
                  child: const BottomNavigationScreen(),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
