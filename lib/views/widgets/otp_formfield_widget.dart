import 'package:device_fusion/utils/app_dimensions.dart';
import 'package:flutter/material.dart';

class OtpFields extends StatelessWidget {
  const OtpFields({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Dimensions.width300,
      height: Dimensions.height75,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 4,
        itemBuilder: (context, index) => Padding(
          padding: EdgeInsets.all(Dimensions.edgeInsert10 - 2),
          child: SizedBox(
            width: Dimensions.width60,
            child: TextFormField(
              keyboardType: TextInputType.number,
              obscureText: true,
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(Dimensions.borderRadius10),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
