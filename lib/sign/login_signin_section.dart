import 'package:ecommarce/core/contains/mycolors.dart';
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
            fillColor: MyColors.inputbackgroundcolors,
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
        SizedBox(
          height: 24.0.h,
        ),
        Text("Password", style: TextStyle(fontWeight: FontWeight.w700, fontSize: 14.sp),),
        TextField(
          decoration: InputDecoration(
              hintText: "Your Password",
              fillColor: MyColors.inputbackgroundcolors,
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
        SizedBox(
          height: 26.h,
        ),
        SizedBox(
          width: double.infinity,
          height: 56.h,
          child: ElevatedButton(
              onPressed: (){},
              child: Text("Login",style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.bold, color: Colors.white),),
              style: ElevatedButton.styleFrom(
                backgroundColor: MyColors.primaryColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40.h),
                ),
              ),
          ),
        ),
        SizedBox(
          height: 26.h,
        ),
        SizedBox(
          width: double.infinity,
          height: 56.h,
          child: ElevatedButton(
            onPressed: (){},
            child: Text("Sign Up",style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.bold, color: Colors.white),),
            style: ElevatedButton.styleFrom(
              backgroundColor: MyColors.secondaryColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(40.h),
              ),
            ),
          ),
        )
      ],
    );
  }
}
