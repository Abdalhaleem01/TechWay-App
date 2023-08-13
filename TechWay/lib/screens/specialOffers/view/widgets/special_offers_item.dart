import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class offerItem extends StatelessWidget {
  const offerItem(
      {super.key,
      required this.imageURL,
      required this.per,
      required this.colorss,
      required this.onTap,
      required this.des});
  final String? imageURL;
  final int? per;
  final String? des;
  final int? colorss;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: const EdgeInsets.only(left: 20),
            width: 360,
            height: 150,
            decoration: BoxDecoration(
              image: const DecorationImage(
                fit: BoxFit.cover,
                scale: 8.0,
                opacity: 0.1,
                image: AssetImage("assets/logo tech splaSH2.png"),
              ),
              color: Color(colorss ?? 0xff3E96E9),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Row(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "$per%",
                      style: TextStyle(
                          fontWeight: FontWeight.w800,
                          fontSize: 37.sp,
                          color: Colors.white),
                    ),
                    Text(
                      '$des',
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 21.sp,
                          color: Colors.white),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Image.asset(
                          "$imageURL",
                          width: 120.w,
                          height: 120.h,
                        )),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
