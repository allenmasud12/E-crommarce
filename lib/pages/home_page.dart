import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../sign/custom_appbar.dart';
import '../sign/login_signin_section.dart';
import '../sign/logo_section.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            children: [
              CustomAppbar(),
              LogoSection(),
              LoginSigninSection(),
            ],
          ),
        ),
      ),
    );
  }
}
