import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:near_food_app/providers/main_page_provider.dart';
import 'package:near_food_app/screens/login_screens/before_login/bl_1.dart';
import 'package:near_food_app/screens/main_scree.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => MainScreenProvider()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (BuildContext context, widget) {
        return const MaterialApp(
          debugShowCheckedModeBanner: false,
          // home: BeforeLogin1(),
          home: MainScreen(),
        );
      },
    );
  }
}
