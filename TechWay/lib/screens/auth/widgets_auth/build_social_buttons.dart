import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class buildSocialButtons extends StatelessWidget {
  const buildSocialButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          buildSocialButton("assets/google-logo.png"),
          SizedBox(width: 16.w),
          buildSocialButton("assets/facebook-2-logo.png"),
          SizedBox(width: 16.w),
          buildSocialButton("assets/twitter-logo-6.png"),
        ],
      ),
    );
  }
}

 Widget buildSocialButton(String imageAsset) {
    return Container(
      width: 54.w,
      height: 54.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(width: 1, color: Color(0xFFD8D8D8)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Image.asset(imageAsset),
      ),
    );
  }
