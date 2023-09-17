import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TabBarController extends GetxController
    with GetSingleTickerProviderStateMixin {
  static TabBarController get instance => Get.find();
  late TabController controller;

  final listItems = [
    'Wearable',
    'Laptops',
    'Headphones',
    'Phones',
  ];

  @override
  void onInit() {
    controller = TabController(length: 4, vsync: this);
    super.onInit();
  }

  @override
  void onClose() {
    controller.dispose();
    super.onClose();
  }
}
