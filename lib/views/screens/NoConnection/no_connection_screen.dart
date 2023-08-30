import 'package:device_fusion/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NoConnectionScreen extends StatelessWidget {
  const NoConnectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/images/connection.png'),
          const SizedBox(
            height: 5,
          ),
          Text(
            'No internet Connection',
            style: GoogleFonts.raleway(
                fontSize: 28,
                color: AppColors.whiteColor,
                fontWeight: FontWeight.w600),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            'Your internet connection is currently not available please check or try again.',
            style: GoogleFonts.raleway(
              fontSize: 16,
              color: AppColors.whiteColor,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 80,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF58C0EA),
                fixedSize: const Size(224, 50)),
            onPressed: () {},
            child: Text(
              'Try Again',
              style: GoogleFonts.raleway(
                fontSize: 16,
                color: AppColors.whiteColor,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
