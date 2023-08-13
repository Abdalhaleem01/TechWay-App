import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class cat_item extends StatelessWidget {
  const cat_item({super.key, required this.icon, required this.title, required this.onTap});
  final String icon;
  final String title;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return  
       Column(
                  children: [
                    
                    InkWell(
                      onTap: onTap,
                      child: Container(
                        
                        width: 73.w,
                        height: 95.h,
                        decoration: const BoxDecoration(
                          color: Color(0xFFF5F5F5),
                          shape: BoxShape.circle,
                        ),
                        alignment: Alignment.center,
                        child: Image.asset(
                          icon,
                          height: 55.h,
                          width: 55.w,
                        ),
                      ),
                    ),
                 
                    Text(title),
                  ],
                );
    
  }
}