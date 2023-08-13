import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../signup.dart';

class buildRegisterLink extends StatelessWidget {
  const buildRegisterLink({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: ScreenUtil().setHeight(10)),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text(
            "Don’t have an account?",
            style: TextStyle(color: Colors.black),
          ),
          SizedBox(width: 2.w),
          InkWell(
            onTap: () {
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (BuildContext context) {
                return const SignUpScreen();
              }));
            },
            child: const Text(
              "Register now",
              style: TextStyle(color: Color(0xFF3E96E9)),
            ),
          ),
        ],
      ),
    );
  }
}
