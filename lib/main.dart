import 'package:ecommarce/provider/auth_provider.dart';
import 'package:ecommarce/route/route_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';


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
          child: MaterialApp.router(
            debugShowCheckedModeBanner: false,
            routerConfig: RouterManager.routeConfig,
            title: 'Flutter Demo',
          ),
        );
      },
    );
  }
}

