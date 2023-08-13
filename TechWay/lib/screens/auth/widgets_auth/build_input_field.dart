import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class buildInputField extends StatelessWidget {
  const buildInputField({super.key,this.icon, this.hintText, this.controller,});
final IconData? icon;
final String? hintText;
final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
     
 
    return SizedBox(
      width: 305.w,
      height: 50.h,
      child: TextFormField(
        decoration: InputDecoration(
          prefixIcon: Icon(
            icon,
            color: const Color(0xFFB1B1B1),
          ),
          contentPadding: const EdgeInsets.only(top: 2),
          hintText: hintText,
          hintStyle: const TextStyle(color: Color(0xFFB1B1B1)),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(100),
            borderSide: const BorderSide(width: 3.0, color: Color(0xFF007BF0)),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(100),
            borderSide: const BorderSide(width: 1.0, color: Color(0xFFD5D5D5)),
          ),
        ),
        controller: controller,
        onChanged: (value) {
          print(value);
        },
        validator: (value) {
          if (value == null || value.isEmpty) {
            return "This field is required";
          }
          return null;
        },
      ),
    );
  }
  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(StringProperty('hintText', hintText));
  }
}