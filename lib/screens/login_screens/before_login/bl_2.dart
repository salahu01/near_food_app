import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:near_food_app/constants/themes.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../login/log_in.dart';
import 'bl_3.dart';

class BeforeLogin2 extends StatelessWidget {
  const BeforeLogin2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        child: Column(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: (){},
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginScreen()));
                    },
                    child: Text(
                      'Skip',
                      style: TextStyle(color: ThemeColors.light, fontSize: 18.sp),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 60.h),
            Padding(
              padding: EdgeInsets.only(left: 20.w),
              child: Image.asset(
                'lib/assets/#2 -ft_image.png',
                height: 232.68.h,
                width: 320.w,
                fit: BoxFit.contain,
              ),
            ),
            SizedBox(height: 60.h),
            Text(
              'Choose A Tasty Dish',
              style: TextStyle(
                  color: ThemeColors.dark,
                  fontSize: 23.sp,
                  fontWeight: FontWeight.w800),
            ),
            SizedBox(height: 23.h),
            Text(
              'Order anything you want from your ',
              style: TextStyle(color: ThemeColors.light, fontSize: 18.sp),
            ),
            Text(
              'Favorite restaurant.',
              style: TextStyle(color: ThemeColors.light, fontSize: 18.sp),
            ),
            SizedBox(height: 90.h),
            SizedBox(
              height: 20.h,
              child: ListView.separated(
                shrinkWrap: true,
                itemCount: 3,
                scrollDirection: Axis.horizontal,
                separatorBuilder: (BuildContext context, int index) {
                  return SizedBox(width: 10.w);
                },
                itemBuilder: (BuildContext context, int index) {
                  if (index == 1) {
                    return CircleAvatar(
                      backgroundColor: ThemeColors.primary,
                      radius: 7.r,
                    );
                  } else {
                    return CircleAvatar(
                      backgroundColor: const Color.fromARGB(112, 158, 158, 158),
                      radius: 7.r,
                    );
                  }
                },
              ),
            ),
            SizedBox(height: 50.h),
            Center(
              child: InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const BeforeLogin3()));
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15.r),
                  child: ColoredBox(
                    color: ThemeColors.primary,
                    child: SizedBox(
                      height: 68.h,
                      width: 325.w,
                      child: Center(
                        child: Text('Next',
                        style: TextStyle(
                          color:Colors.white,
                          fontSize: 20.sp
                        ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
