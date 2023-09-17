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
  int _bottomCurrentIndex = 0;

  final Color _selectedColor = AppColors.primaryColor;
  final Color _unselectedColor = Colors.grey;

  final screens = [
    const HomePage(),
    const CategoriesScreen(),
    const AddToCart(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[_bottomCurrentIndex],
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: false,
        currentIndex: _bottomCurrentIndex,
        onTap: (index) {
          setState(() {
            _bottomCurrentIndex = index;
          });
        },
        items: <BottomNavigationBarItem>[
          _buildNavItem(Icons.home, 'Home', 0),
          _buildNavItem(Icons.category, 'Category', 1),
          _buildNavItem(Icons.shopping_cart_outlined, 'Cart', 2),
          _buildNavItem(Icons.supervised_user_circle_outlined, 'Profile', 3),
        ],
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
          color: _bottomCurrentIndex == index
              ? _selectedColor
              : Colors.transparent,
        ),
        padding: EdgeInsets.all(Dimensions.edgeInsert10 - 2),
        child: Icon(
          icon,
          size: Dimensions.iconSize50 - 25,
          color: _bottomCurrentIndex == index ? Colors.white : _unselectedColor,
        ),
      ),
      label: label,
    );
  }
}
