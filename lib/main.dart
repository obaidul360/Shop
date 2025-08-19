import 'package:choice/bottom_navigation_bar/bottom_navigation_bar.dart';
import 'package:choice/provider_model/cart_provider.dart';
import 'package:choice/provider_model/favorite_provider.dart';
import 'package:choice/provider_model/product_provider.dart';
import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ProductPrvider()),
        ChangeNotifierProvider(create: (_) => FavoriteProvider()),
        ChangeNotifierProvider(create: (_)=>CartProvider()),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ScreenUtilInit(
        designSize: const Size(360, 690),
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
