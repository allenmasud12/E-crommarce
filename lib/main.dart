import 'package:ecommarce/provider/auth_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import 'pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (BuildContext context, Widget? child) {
        print('ScreenUtil initialized successfully');
        return MultiProvider(
          providers: [
            ChangeNotifierProvider (create: (_) => AuthProvider()),
          ],
          child: const MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            home: HomePage(),
          ),
        );
      },
    );
  }
}

