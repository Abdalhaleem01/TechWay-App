import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:techway/screens/auth/login.dart';
import 'package:techway/screens/auth/widgets_auth/build_background.dart';
import 'package:techway/screens/auth/widgets_auth/build_input_field.dart';
import 'package:techway/screens/auth/widgets_auth/send_button.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({super.key});

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  late TextEditingController emailController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    emailController = TextEditingController();
  }

  @override
  void dispose() {
    emailController.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
          body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SizedBox(
            width: 1.sw,
            height: 1.sh,
            child: Stack(
              children: <Widget>[
                const buildBackground(),
                SizedBox(
                  width: double.infinity,
                  height: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: ScreenUtil().setWidth(25)),
                        child: Container(
                          width: 365.w,
                          height: 343.h,
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  offset: const Offset(0, 3),
                                  blurRadius: 10.0,
                                  color:
                                      const Color(0xFF000000).withOpacity(0.1),
                                )
                              ],
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    vertical: ScreenUtil().setHeight(25)),
                                child: Text(
                                  "Reset Password",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 29.sp),
                                ),
                              ),
                              Text(
                                "Enter your E-mail or phone and we'll\nsend you a link to get back into\nyour account.",
                                style: TextStyle(
                                    color: const Color(0xFF818181), fontSize: 15.sp),
                                textAlign: TextAlign.center,
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    vertical: ScreenUtil().setHeight(35),
                                    horizontal: ScreenUtil().setWidth(30)),
                                child: buildInputField(
                                  icon: Icons.email_outlined,
                                  hintText: "Email/Phone Number",
                                  controller: emailController,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SendButton(pageToGo: LoginScreen(),),
              ],
            )),
      )),
    ));
  }
}
