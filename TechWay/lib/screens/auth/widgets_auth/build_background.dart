import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class buildBackground extends StatelessWidget {
  const buildBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
     width: 1.sw,
   height: 1.sh,
      child: Stack(
        children: <Widget>[
          Container(
            width: 428.w,
            height: 375.h,
            decoration: const BoxDecoration(
              color: Color(0xFF3E96E9),
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(28)),
            ),
          ),
          SizedBox(
            width: 428.w,
            height: 375.h,
            child: Opacity(
              opacity: 0.3,
              child: Image.asset(
                "assets/logo tech splaSH2.png",
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            left: ScreenUtil().setWidth(75),
            child: Image.asset(
              "assets/logo tech way 3.png",
              width:200.w,
              height: 200.h,
            ),
          ),
        ],
      ),
    );
  }
}