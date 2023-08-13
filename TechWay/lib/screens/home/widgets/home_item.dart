import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class home_item extends StatelessWidget {
  const home_item(
      {super.key,
      required this.imageURL,
      required this.title,
      required this.item_price});

  final String imageURL;
  final String title;
  // final VoidCallback onTap;
  final String item_price;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // onTap: onTap,

      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 115.w,
            height: 124.h,
            decoration: BoxDecoration(
              color: const Color(0xFF0083FF).withOpacity(0.27),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(children: [
              SizedBox(
                width: 114.w,
                height: 72.h,
                child: Image.asset(
                  imageURL,
                 fit: BoxFit.contain,
                ),
              ),
                 SizedBox(
                height: 5.h,
              ),
              Text(title,style:  TextStyle(color: Colors.black,fontSize: 9.sp,fontWeight: FontWeight.w400),),
               SizedBox(
                height: 3.h,
              ),
              Container(
                width: 73.w,
                height: 21.h,
                decoration: BoxDecoration(
                  color: const Color(0xFF3E96E9),
                  borderRadius: BorderRadius.circular(6),
                ),
                
                child: Align(alignment: Alignment.center,
                  child: Text(item_price,style:  TextStyle(color: Colors.white,fontSize: 10.sp,fontWeight: FontWeight.w400),)),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
