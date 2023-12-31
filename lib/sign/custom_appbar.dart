import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Hello Welcome", style: TextStyle(fontSize: 14.0.sp)),
            Text("Let's Login or Signup", style: TextStyle(fontSize: 16.0.sp, fontWeight: FontWeight.bold)),
          ],
        ),
        const CircleAvatar(backgroundImage: AssetImage("assets/images/common/profile.png"),),
      ],
    );
  }
}
