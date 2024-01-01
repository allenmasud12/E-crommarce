import 'package:flutter/material.dart';


import '../sign/custom_appbar.dart';
import '../sign/login_signin_section.dart';
import '../sign/logo_section.dart';

class LoginPage extends StatelessWidget {
 const LoginPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding:  EdgeInsets.symmetric(horizontal: 24.0, vertical: 10),
            child: Column(
              children: [
                CustomAppbar(),
                LogoSection(),
                LoginSigninSection(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
