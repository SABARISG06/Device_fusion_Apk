import 'package:device_fusion/constants/app_colors.dart';
import 'package:device_fusion/constants/app_icons.dart';
import 'package:device_fusion/models/hidden_drawer_model.dart';
import 'package:flutter/material.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconly/iconly.dart';

class HiddenItems {
  static const home = HiddenDrawerModel(
    title: 'Home',
    icon: Icon(
      IconlyBold.home,
      color: AppColors.whiteColor,
    ),
  );
  static const basket = HiddenDrawerModel(
      title: 'Basket',
      icon: Icon(
        Icons.shopping_cart_outlined,
        color: AppColors.whiteColor,
      ));
  static const favorites = HiddenDrawerModel(
      title: 'Favorites',
      icon: Iconify(
        AppIcons.favoriteIcons,
        color: AppColors.whiteColor,
      ));
  static const orders = HiddenDrawerModel(
      title: 'Orders',
      icon: Icon(
        IconlyBold.bag,
        color: AppColors.whiteColor,
      ));
  static const settings = HiddenDrawerModel(
      title: 'Settings',
      icon: Icon(
        IconlyBold.setting,
        color: AppColors.whiteColor,
      ));
  static const logout = HiddenDrawerModel(
      title: 'Logout',
      icon: Icon(
        IconlyBold.logout,
        color: AppColors.whiteColor,
      ));

  static List<HiddenDrawerModel> listOfHidden = [
    home,
    basket,
    orders,
    favorites,
    settings,
    logout,
  ];
}
