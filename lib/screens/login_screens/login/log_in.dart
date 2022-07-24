import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../constants/themes.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: ThemeColors.white,
      appBar: AppBar(
        backgroundColor: ThemeColors.white,
        elevation: 0,
        toolbarHeight: 0,
        systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: ThemeColors.white,
            statusBarIconBrightness: ThemeColors.statusBarDark),
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(30).r,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Text(
                  'Login',
                  style: TextStyle(
                      color: ThemeColors.dark,
                      fontSize: 30.sp,
                      fontWeight: FontWeight.w700),
                ),
                SizedBox(height: 15.h),
                Text(
                  'Access account',
                  style: TextStyle(color: ThemeColors.light, fontSize: 17.sp),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(13.r),
                  child: ColoredBox(
                    color: Colors.grey.shade100,
                    child: SizedBox(
                        height: 75.h,
                        width: 145.w,
                        child: Image.asset(
                          'lib/assets/google.png',
                          scale: 1.7,
                        )),
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(13.r),
                  child: ColoredBox(
                    color: Colors.grey.shade100,
                    child: SizedBox(
                        height: 75.h,
                        width: 150.w,
                        child: Image.asset(
                          'lib/assets/facebook.png',
                          scale: 1.9,
                        )),
                  ),
                )
              ],
            ),
            Text(
              'or Login with Email',
              style: TextStyle(color: ThemeColors.light, fontSize: 17.sp),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Email',
                  style: TextStyle(
                      color: ThemeColors.dark,
                      fontSize: 17.sp,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(height: 20.h),
                ClipRRect(
                  borderRadius: BorderRadius.circular(20.r),
                  child: TextField(
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 0.5,
                      decorationThickness: 0,
                    ),
                    maxLines: 1,
                    decoration: InputDecoration(
                      isCollapsed: true,
                      contentPadding: EdgeInsets.all(20.r),
                      border: InputBorder.none,
                      filled: true,
                      fillColor: const Color.fromARGB(255, 248, 248, 250),
                    ),
                  ),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Password',
                  style: TextStyle(
                      color: ThemeColors.dark,
                      fontSize: 17.sp,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(height: 20.h),
                ClipRRect(
                  borderRadius: BorderRadius.circular(20.r),
                  child: TextField(
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 0.5,
                        decorationThickness: 0),
                    maxLines: 1,
                    decoration: InputDecoration(
                      isCollapsed: true,
                      contentPadding: EdgeInsets.all(20.r),
                      border: InputBorder.none,
                      filled: true,
                      fillColor: const Color.fromARGB(255, 248, 248, 250),
                    ),
                  ),
                ),
              ],
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const LoginScreen()));
              },
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15.r),
                child: ColoredBox(
                  color: ThemeColors.primary,
                  child: SizedBox(
                    height: 68.h,
                    width: 325.w,
                    child: Center(
                      child: Text(
                        'Sign In',
                        style: TextStyle(color: Colors.white, fontSize: 22.sp),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text(
                'Don\'t have an account?   ',
                style: TextStyle(color: ThemeColors.light, fontSize: 16.sp),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginScreen()));
                },
                child: Text(
                  'Register',
                  style: TextStyle(
                      color: ThemeColors.primary,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ]),
            SizedBox(height: 15.h),
          ],
        ),
      )),
    );
  }
}