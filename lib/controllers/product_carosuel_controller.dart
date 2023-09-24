import 'package:device_fusion/constants/app_dimensions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductCarosuelController extends GetxController {
  static ProductCarosuelController get instance => Get.find();
  final RxDouble _currentPage = 0.0.obs;
  double scaleFactor = 0.8;
  double height = Dimensions.height215;
  double width = Dimensions.width212;
  final pageController = PageController(viewportFraction: 0.6);

  @override
  void onInit() {
    pageController.addListener(() {
      _currentPage.value = pageController.page!;
      // print(_currentPage);
    });
    super.onInit();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  Matrix4 scalingUpandDown(int index) {
    //!Scaling up and down
    Matrix4 matrix = Matrix4.identity();
    if (index == _currentPage.value.floor()) {
      var currScale = 1 - (_currentPage.value - index) * (1 - scaleFactor);

      var currTrans = height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } //?else if
    else if (index == _currentPage.value.floor() + 1) {
      var currScale =
          scaleFactor + (_currentPage.value - index + 1) * (1 - scaleFactor);
      var currTrans = height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1);
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } //?else if
    else if (index == _currentPage.value.floor() - 1) {
      var currScale = 1 - (_currentPage.value - index) * (1 - scaleFactor);
      var currTrans = height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1);
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } //*else
    else {
      matrix = Matrix4.diagonal3Values(1, scaleFactor, 1)
        ..setTranslationRaw(0, height * (1 - scaleFactor) / 2, 0);
    }
    return matrix;
  }
}
