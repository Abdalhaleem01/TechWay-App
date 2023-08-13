import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:techway/screens/auth/widgets_auth/build_signup_login_link.dart';
import 'package:techway/screens/auth/login.dart';
import 'package:techway/screens/auth/widgets_auth/build_background.dart';
import 'package:techway/screens/auth/widgets_auth/build_input_field.dart';
import 'package:techway/screens/auth/widgets_auth/build_signup_button.dart';
import 'package:techway/screens/auth/widgets_auth/build_signup_social.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  late TextEditingController emailController;
  late TextEditingController passwordController;
  late TextEditingController usernameController;
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    emailController = TextEditingController();
    passwordController = TextEditingController();
    usernameController = TextEditingController();
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    usernameController.dispose();
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
                Container(
                  width: double.infinity,
                  height: double.infinity,
                  padding: const EdgeInsets.only(top: 160),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: ScreenUtil().setWidth(25),
                          ),
                          child: Container(
                            width: 365.w,
                            height: 500.h,
                            decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    offset: const Offset(0, 3),
                                    blurRadius: 10.0,
                                    color: const Color(0xFF000000).withOpacity(0.1),
                                  )
                                ],
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10)),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 27, bottom: 35),
                                  child: Container(
                                    alignment: Alignment.center,
                                    child: Container(
                                      width: 166.w,
                                      height: 40.h,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(100),
                                        color: const Color(0xFFF1F1F1),
                                      ),
                                      child: Row(
                                        children: [
                                          InkWell(
                                            onTap: () {
                                              Navigator.of(context)
                                                  .pushReplacement(
                                                      MaterialPageRoute(builder:
                                                          (BuildContext
                                                              context) {
                                                return const LoginScreen();
                                              }));
                                            },
                                            child: Container(
                                              width: 76.w,
                                              alignment: Alignment.center,
                                              child: Text(
                                                "Login",
                                                style: TextStyle(
                                                    fontSize: 14.sp,
                                                    color: Colors.black),
                                              ),
                                            ),
                                          ),
                                          const Spacer(),
                                          Container(
                                            width: 88.w,
                                            height: 40.h,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(100),
                                              color: const Color(0xFF3E96E9),
                                            ),
                                            child: Align(
                                              alignment: Alignment.center,
                                              child: Text(
                                                "SignUp",
                                                style: TextStyle(
                                                    fontSize: 14.sp,
                                                    color: Colors.white),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Form(
                                  key: _formKey,
                                  child: Padding(
                                    padding:
                                        const EdgeInsets.symmetric(horizontal: 51),
                                    child: Column(
                                      children: [
                                        buildInputField(
                                          icon: Icons.person_2_outlined,
                                          hintText: "Username",
                                          controller: usernameController,
                                        ),
                                        SizedBox(height: 18.h),
                                        buildInputField(
                                          icon: Icons.email_outlined,
                                          hintText: "Email Address",
                                          controller: emailController,
                                        ),
                                        SizedBox(height: 18.h),
                                        buildInputField(
                                          icon: Icons.lock,
                                          hintText: "Password",
                                          controller: passwordController,
                                        ),
                                        SizedBox(
                                          height: 18.h,
                                        ),
                                        const SocialSignup(
                                          imageURL:
                                              "assets/facebook-2-logo.png",
                                          title: "Sign Up with Facebook",
                                        ),
                                        SizedBox(
                                          height: 18.h,
                                        ),
                                        const SocialSignup(
                                          imageURL: "assets/google-logo.png",
                                          title: "Sign Up with Google",
                                        ),
                                        const LoginLink(),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ]),
                ),
                SignUpButton(
                  formKey: _formKey,
                ),
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
