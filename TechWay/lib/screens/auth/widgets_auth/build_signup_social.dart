import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SocialSignup extends StatelessWidget {
  const SocialSignup({super.key, this.imageURL, this.title});
  final String? imageURL;
  final String? title;

  @override
  Widget build(BuildContext context) {
    return Container(
       width: 305.w,
      height: 50.h,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(100),border: Border.all(color: const Color(0xFFB1B1B1),)),
child: Row(
  children: [
    Padding(
      padding:  EdgeInsets.only(left: ScreenUtil().setWidth(5)),
      child: Image.asset("$imageURL",width: 30.w,height: 30.h,),
    ),
        Container(
          alignment: Alignment.center,
          padding: EdgeInsets.only(left: ScreenUtil().setWidth(5)),
          child: Text("$title",style: TextStyle(fontSize: 16.sp),)),
  ],
),
    );
  }
}