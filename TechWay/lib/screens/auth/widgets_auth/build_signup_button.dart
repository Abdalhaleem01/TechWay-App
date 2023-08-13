import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:techway/screens/auth/login.dart';

class SignUpButton extends StatelessWidget {
  const SignUpButton({super.key, required this.formKey});
    final GlobalKey<FormState> formKey;

  @override
  Widget build(BuildContext context) {
    return  Align(
      alignment: Alignment.bottomCenter,
      child: Container(
 padding: EdgeInsets.symmetric(vertical: ScreenUtil().setHeight(10)),
        child: InkWell(
          onTap: () {
            if (formKey.currentState!.validate()) {
          Navigator.of(context).pushReplacement(
                          MaterialPageRoute(builder: (BuildContext context) {
                        return const LoginScreen();
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
              child: Text("Sign UP", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 18.sp)),
            ),
          ),
        ),
      ),
    );
  }
}