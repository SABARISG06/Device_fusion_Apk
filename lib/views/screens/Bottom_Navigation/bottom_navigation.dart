import 'package:device_fusion/utils/app_colors.dart';
import 'package:device_fusion/utils/app_dimensions.dart';
import 'package:device_fusion/views/screens/Add_Cart/add_to_cart_screen.dart';
import 'package:device_fusion/views/screens/Categories/categories_screen.dart';
import 'package:device_fusion/views/screens/Homepage/home_page.dart';
import 'package:device_fusion/views/screens/Profile/profile_screen.dart';
import 'package:flutter/material.dart';

class BottomNavigationScreen extends StatefulWidget {
  const BottomNavigationScreen({super.key});

  @override
  State<BottomNavigationScreen> createState() => _BottomNavigationScreenState();
}

class _BottomNavigationScreenState extends State<BottomNavigationScreen> {
  int bottomCurrentIndex = 0;

  final screens = [
    const HomePage(),
    const CategoriesScreen(),
    const AddToCart(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[bottomCurrentIndex],
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: false,
        iconSize: Dimensions.iconSize50 - 25,
        currentIndex: bottomCurrentIndex,
        onTap: (index) => setState(() {
          bottomCurrentIndex = index;
        }),
        items: const [
          BottomNavigationBarItem(
            backgroundColor: AppColors.mainColor,
            icon: Icon(
              Icons.home,
            ),
            label: 'home',
          ),
          BottomNavigationBarItem(
            backgroundColor: AppColors.mainColor,
            icon: Icon(
              Icons.category,
            ),
            label: 'category',
          ),
          BottomNavigationBarItem(
            backgroundColor: AppColors.mainColor,
            icon: Icon(
              Icons.shopping_cart_outlined,
            ),
            label: 'cart',
          ),
          BottomNavigationBarItem(
            backgroundColor: AppColors.mainColor,
            icon: Icon(
              Icons.supervised_user_circle_outlined,
            ),
            label: 'profile',
          ),
        ],
      ),
    );
  }
}
