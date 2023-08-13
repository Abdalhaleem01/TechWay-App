import 'package:slide_countdown/slide_countdown.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:techway/screens/auth/login.dart';

class SendButton extends StatelessWidget {
  const SendButton({super.key, this.pageToGo});
  final dynamic pageToGo;

  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: Padding(
            padding: EdgeInsets.only(top: ScreenUtil().setHeight(350)),
            child: InkWell(
              onTap: () {
                dialogPopUp(context);
              },
              child: Container(
                width: 145.w,
                height: 40.h,
                decoration: BoxDecoration(
                  color: const Color(0xFF3E96E9),
                  borderRadius: BorderRadius.circular(100),
                ),
                child: Center(
                  child: Text("Send",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 18.sp)),
                ),
              ),
            )));
  }
}

dialogPopUp(context) {
  showDialog(
      context: context,
      builder: (context) {
        return StatefulBuilder(builder: (context, setStateForDialog) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              AlertDialog(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16)),
                scrollable: true,
                backgroundColor: Colors.white,
                surfaceTintColor: Colors.white,
                contentPadding: EdgeInsets.symmetric(
                    vertical: ScreenUtil().setHeight(10),
                    horizontal: ScreenUtil().setWidth(10)),
                content: Container(
                  color: Colors.white,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/verify.png",
                        width: 120.w,
                        height: 120.h,
                      ),
                      Text(
                        "Enter 4 Digits code",
                        style: TextStyle(
                          color: const Color(0xFFA4A4A4),
                          fontSize: 13.sp,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Form(
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              vertical: ScreenUtil().setHeight(20)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              digitField(context),
                              digitField(context),
                              digitField(context),
                              digitField(context),
                            ],
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: ScreenUtil().setWidth(10)),
                              child: const SlideCountdown(
                                separator: ":",
                                separatorStyle:
                                    TextStyle(color: Color(0xFF3E96E9)),
                                textStyle: TextStyle(color: Color(0xFF3E96E9)),
                                duration: Duration(minutes: 5),
                                decoration: BoxDecoration(),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: ScreenUtil().setWidth(30)),
                              child: Text("Resend"),
                            ),
                          )
                        ],
                      ),
                      VerifyButton(context),
                    ],
                  ),
                ),
              ),
            ],
          );
        });
      });
}

verifyDone(context) {
  showDialog(
      context: context,
      builder: (context) {
        return StatefulBuilder(builder: (context, setStateForDialog) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                "assets/mark check.png",
                width: 200.w,
                height: 150.h,
              ),
              Padding(
                padding:
                    EdgeInsets.symmetric(vertical: ScreenUtil().setHeight(20)),
                child: Text(
                  "Congratulations!",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25.sp,
                      fontWeight: FontWeight.w500),
                  textAlign: TextAlign.center,
                ),
              ),
              Text(
                "Password reset succesfuly",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w400),
                textAlign: TextAlign.center,
              ),
              Padding(
                padding:
                    EdgeInsets.symmetric(vertical: ScreenUtil().setHeight(20)),
                child: Material(
                  type: MaterialType.transparency,
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).pushReplacement(
                          MaterialPageRoute(builder: (BuildContext context) {
                        return const LoginScreen();
                      }));
                    },
                    child: Container(
                      width: 282.w,
                      height: 57.h,
                      decoration: BoxDecoration(
                        color: const Color(0xFF3E96E9),
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Center(
                        child: Text("Back",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 18.sp)),
                      ),
                    ),
                  ),
                ),
              )
            ],
          );
        });
      });
}

Widget digitField(context) {
  return Container(
    padding: EdgeInsets.symmetric(vertical: ScreenUtil().setHeight(10)),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(9),
      color: Colors.white,
      boxShadow: [
        BoxShadow(
          blurRadius: 10.0,
          color: const Color(0xFF000000).withOpacity(0.1),
        )
      ],
    ),
    width: 40.w,
    height: 40.h,
    child: TextFormField(
      onChanged: (vaule) {
        if (vaule.length == 1) {
          FocusScope.of(context).nextFocus();
        }
      },
      keyboardType: TextInputType.number,
      textAlign: TextAlign.center,
      inputFormatters: [
        LengthLimitingTextInputFormatter(1),
        FilteringTextInputFormatter.digitsOnly
      ],
      decoration: const InputDecoration(
          focusedBorder:
              UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
          enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.white))),
    ),
  );
}

Widget VerifyButton(context) {
  return Center(
    child: InkWell(
      onTap: () {
        verifyDone(context);
      },
      child: Container(
        width: 282.w,
        height: 57.h,
        decoration: BoxDecoration(
          color: const Color(0xFF3E96E9),
          borderRadius: BorderRadius.circular(100),
        ),
        child: Center(
          child: Text("Verify",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 18.sp)),
        ),
      ),
    ),
  );
}
