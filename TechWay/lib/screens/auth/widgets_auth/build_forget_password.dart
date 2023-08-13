import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:techway/screens/auth/forget_password.dart';

class buildForgotPasswordLink extends StatelessWidget {
  const buildForgotPasswordLink({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomRight,
      child: Padding(
        padding:  EdgeInsets.symmetric(vertical: ScreenUtil().setHeight(20)),
        child:  InkWell(
          onTap: (){
            Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context) { return const ForgetPassword(); }));
          },
          child: const Text(
            "Forget Password?",
            style: TextStyle(color: Color(0xFF3E96E9)),
          ),
        ),
      ),
    );
  }
}