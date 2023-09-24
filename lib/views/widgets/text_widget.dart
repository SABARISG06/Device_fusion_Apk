import 'package:device_fusion/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomText extends StatelessWidget {
  const CustomText({
    super.key,
    required this.text,
    required this.size,
    this.color = AppColors.whiteColor,
    required this.fontWeight,
    this.textAlign,
    this.textDecoration = TextDecoration.none,
    this.overflow,
    this.maxLines,
  });

  final String text;
  final double size;
  final Color color;
  final FontWeight fontWeight;
  final TextAlign? textAlign;
  final TextDecoration textDecoration;
  final TextOverflow? overflow;
  final int? maxLines;

  @override
  Widget build(BuildContext context) {
    return Text(
      maxLines: maxLines,
      text,
      style: GoogleFonts.raleway(
        fontSize: size,
        color: color,
        fontWeight: fontWeight,
        decoration: textDecoration,
      ),
      overflow: overflow,
      textAlign: textAlign,
    );
  }
}
