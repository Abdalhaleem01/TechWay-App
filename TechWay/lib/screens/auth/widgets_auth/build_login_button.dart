import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:techway/screens/navigationPages/navigationbarscreens.dart';


class buildLoginButton extends StatelessWidget {
  const buildLoginButton({super.key, required this.formKey});
  final GlobalKey<FormState> formKey;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: ScreenUtil().setHeight(40)),
        child: InkWell(
          onTap: () {
            if (formKey.currentState!.validate()) {
           
                  Navigator.of(context).pushReplacement(
                          MaterialPageRoute(builder: (BuildContext context) {
                        return const ButtomNavigationScreen();
                      }));
            }
          },
          child: Container(
            width: 145.w,
            height: 40.h,
            decoration: BoxDecoration(
              color: const Color(0xFF3E96E9),
              borderRadius: BorderRadius.circular(100),
            ),
            child: Center(
              child: Text("LOG IN",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 18.sp)),
            ),
          ),
        ),
      ),
    );
  }
}
