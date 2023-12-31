import 'package:ecommarce/core/contains/mycolors.dart';
import 'package:ecommarce/provider/auth_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';

class LoginSigninSection extends StatelessWidget {
  LoginSigninSection({Key? key}) : super(key: key);
  TextEditingController emailTextEditingController = TextEditingController();
  TextEditingController passwordTextEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Username",
          style: TextStyle(fontWeight: FontWeight.w700, fontSize: 14.sp),
        ),
        TextField(
          controller: emailTextEditingController,
          decoration: InputDecoration(
              hintText: "example: allenmasud",
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
                  borderSide: BorderSide(color: Colors.transparent, width: 0))),
        ),
        SizedBox(
          height: 24.0.h,
        ),
        Text(
          "Password",
          style: TextStyle(fontWeight: FontWeight.w700, fontSize: 14.sp),
        ),
        TextField(
          controller: passwordTextEditingController,
          obscureText: true,
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
                  borderSide: BorderSide(color: Colors.transparent, width: 0))),
        ),
        SizedBox(
          height: 26.h,
        ),
        Center(
            child: Consumer<AuthProvider>(
              builder: (context, authProvider, _)=> authProvider.hasError? Text(
                "${authProvider.errorMassage}",
                        style: TextStyle(fontSize: 20.0, color: Colors.red),
                      ): Container(),
            )),
        SizedBox(
          height: 26.h,
        ),
        SizedBox(
          width: double.infinity,
          height: 56.h,
          child: ElevatedButton(
            onPressed: () async {
              String username = emailTextEditingController.text;
              String password = passwordTextEditingController.text;
              Provider.of<AuthProvider>(context, listen: false)
                  .login(username, password);
            },
            child: Consumer<AuthProvider>(
                builder: (context, authProvider, _) => authProvider.isLoding
                    ? CircularProgressIndicator(
                        color: Colors.white,
                      )
                    : Text(
                        "Login",
                        style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      )),
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
            onPressed: () {},
            child: Text(
              "Sign Up",
              style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
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
