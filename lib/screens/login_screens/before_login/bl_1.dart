import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:near_food_app/constants/themes.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:near_food_app/screens/login_screens/before_login/bl_2.dart';

import '../login/log_in.dart';

class BeforeLogin1 extends StatelessWidget {
  const BeforeLogin1({Key? key}) : super(key: key);

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
                'lib/assets/#1 -ft_image.png',
                height: 232.68.h,
                width: 320.w,
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(height: 60.h),
            Text(
              'Be Togather',
              style: TextStyle(
                  color: ThemeColors.dark,
                  fontSize: 23.sp,
                  fontWeight: FontWeight.w800),
            ),
            SizedBox(height: 23.h),
            Text(
              'Healthy eating means eating a variety',
              style: TextStyle(color: ThemeColors.light, fontSize: 18.sp),
            ),
            Text(
              'of foods that give you the nutrients you',
              style: TextStyle(color: ThemeColors.light, fontSize: 18.sp),
            ),
            Text(
              'need to maintain your health, feel ',
              style: TextStyle(color: ThemeColors.light, fontSize: 18.sp),
            ),
            Text(
              'good, and have energy.',
              style: TextStyle(color: ThemeColors.light, fontSize: 18.sp),
            ),
            SizedBox(height: 50.h),
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
                  if (index == 0) {
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
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const BeforeLogin2()));
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
