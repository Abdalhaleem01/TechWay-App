import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:techway/screens/auth/signup.dart';
import 'package:techway/screens/auth/widgets_auth/build_background.dart';
import 'package:techway/screens/auth/widgets_auth/build_forget_password.dart';
import 'package:techway/screens/auth/widgets_auth/build_input_field.dart';
import 'package:techway/screens/auth/widgets_auth/build_login_button.dart';
import 'package:techway/screens/auth/widgets_auth/build_register_link.dart';
import 'package:techway/screens/auth/widgets_auth/build_social_buttons.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late TextEditingController emailController;
  late TextEditingController passwordController;
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    emailController = TextEditingController();
    passwordController = TextEditingController();
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
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
                    padding: const EdgeInsets.only(top: 124),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: ScreenUtil().setWidth(25)),
                            child: Container(
                              width: 365.w,
                              height: 470.h,
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
                                        top: 27, bottom: 45),
                                    child: Container(
                                      alignment: Alignment.center,
                                      child: Container(
                                        width: 166.w,
                                        height: 40.h,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(100),
                                          color: const Color(0xFF3E96E9),
                                        ),
                                        child: Row(
                                          children: [
                                            Container(
                                              width: 76.w,
                                              alignment: Alignment.center,
                                              child: Text(
                                                "Login",
                                                style: TextStyle(
                                                    fontSize: 14.sp,
                                                    color: Colors.white),
                                              ),
                                            ),
                                            const Spacer(),
                                            InkWell(
                                              onTap: () {
                                                  Navigator.of(context)
                                                  .pushReplacement(
                                                      MaterialPageRoute(builder:
                                                          (BuildContext
                                                              context) {
                                                return const SignUpScreen();
                                              }));
                                              },
                                              child: Container(
                                                width: 88.w,
                                                height: 40.h,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          100),
                                                  color: const Color(0xFFF1F1F1),
                                                ),
                                                child: Align(
                                                  alignment: Alignment.center,
                                                  child: Text(
                                                    "SignUp",
                                                    style: TextStyle(
                                                        fontSize: 14.sp,
                                                        color: Colors.black),
                                                  ),
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
                                            icon: Icons.email_outlined,
                                            hintText: "Email Address",
                                            controller: emailController,
                                          ),
                                          SizedBox(height: 20.h),
                                          buildInputField(
                                            icon: Icons.lock,
                                            hintText: "Password",
                                            controller: passwordController,
                                          ),
                                          const buildForgotPasswordLink(),
                                          const buildSocialButtons(),
                                          const buildRegisterLink(),
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
                  buildLoginButton(
                    formKey: _formKey,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  
}
