import 'package:device_fusion/constants/app_dimensions.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomElevatedBtn extends StatelessWidget {
  const CustomElevatedBtn({
    super.key,
    required this.text,
    required this.color,
    required this.bgColor,
    required this.onPressed,
  });

  final String text;
  final Color color;
  final Color bgColor;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: bgColor,
        fixedSize: Size(Dimensions.width314, Dimensions.height70),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(Dimensions.borderRadius10),
        ),
      ),
      onPressed: onPressed,
      child: Text(
        text,
        style: GoogleFonts.raleway(
          fontSize: Dimensions.fontSize18 + 2,
          color: color,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
