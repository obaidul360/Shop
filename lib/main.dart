import 'package:choice/bottom_navigation_bar/bottom_navigation_bar.dart';
import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ScreenUtilInit(
        designSize: Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return MaterialApp(
            theme: ThemeData(primaryColor: Colors.red),
            debugShowCheckedModeBanner: false,
            home: BottomNavigationBarPage(),
          );
        },
      ),
    );
  }
}
