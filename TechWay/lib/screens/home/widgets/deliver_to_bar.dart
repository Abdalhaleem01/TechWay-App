import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DiliverTo extends StatelessWidget {
  const DiliverTo({super.key});

  @override
  Widget build(BuildContext context) {
    return     Container(
                  width: 1.sw,
                  padding: const EdgeInsets.symmetric(horizontal: 32),
                  height: 80.h,
                  color: const Color(0xFFF5F5F5),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 8, vertical: 5),
                              child:  Text(
                                "Deliver to",
                                style: TextStyle(
                                    color: const Color(0xFF595959),
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                            Row(
                              children: [
                                Image.asset(
                                  "assets/place.png",
                                  width: 30.w,
                                  height: 20.h,
                                ),
                                 Text(
                                  "Al-Harith Al-Asadi, Amman",
                                  style: TextStyle(
                                    color: const Color(0xFF000000),
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Container(
                            width: 50.w,
                            height: 50.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white,
                            ),
                            child: Image.asset(
                              "assets/notification.png",
                              width: 30.w,
                              height: 30.h,
                            ),
                          ),
                        )
                      ]),
                );
  }
}