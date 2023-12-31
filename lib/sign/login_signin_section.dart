import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginSigninSection extends StatelessWidget {
  const LoginSigninSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Email", style: TextStyle(fontWeight: FontWeight.w700, fontSize: 14.sp),),
        TextField(
          decoration: InputDecoration(
            hintText: "example: example@gmail.com",
            fillColor: Color(0xffF6F6F6),
            filled: true,
            contentPadding:
              EdgeInsets.symmetric(vertical: 26.0, horizontal: 18.0),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.r),
              borderSide: BorderSide(color: Colors.transparent, width: 0),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.r),
              borderSide: BorderSide(color: Colors.transparent, width: 0),
            ),
            focusedBorder: OutlineInputBorder(
              gapPadding: 0.0,
              borderRadius: BorderRadius.circular(8.r),
              borderSide: BorderSide(color: Colors.transparent, width: 0)
            )
          ),
        ),
      ],
    );
  }
}
