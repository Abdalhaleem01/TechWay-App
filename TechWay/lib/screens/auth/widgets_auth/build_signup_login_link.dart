import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../login.dart';

class LoginLink extends StatelessWidget {
  const LoginLink({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: ScreenUtil().setHeight(20)),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text(
            "Do you have an account?",
            style: TextStyle(color: Colors.black),
          ),
          SizedBox(width: 2.w),
          InkWell(
            onTap: () {
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (BuildContext context) {
                return const LoginScreen();
              }));
            },
            child: const Text(
              "Log in now",
              style: TextStyle(color: Color(0xFF3E96E9)),
            ),
          ),
        ],
      ),
    );
  }
}
