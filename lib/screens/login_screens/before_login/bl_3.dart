import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:near_food_app/constants/themes.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:near_food_app/screens/login_screens/login/log_in.dart';
import 'package:near_food_app/screens/main_scree.dart';

class BeforeLogin3 extends StatelessWidget {
  const BeforeLogin3({Key? key}) : super(key: key);

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
            SizedBox(height: 120.h),
            Padding(
              padding: EdgeInsets.only(left: 20.w),
              child: Image.asset(
                'lib/assets/#3 -ft_image.png',
                height: 232.68.h,
                width: 320.w,
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(height: 60.h),
            Text(
              'Easy Payment',
              style: TextStyle(
                  color: ThemeColors.dark,
                  fontSize: 23.sp,
                  fontWeight: FontWeight.w800),
            ),
            SizedBox(height: 23.h),
            Text(
              'Payment made easy through debit ',
              style: TextStyle(color: ThemeColors.light, fontSize: 18.sp),
            ),
            Text(
              'card, credit card  & more ways to pay ',
              style: TextStyle(color: ThemeColors.light, fontSize: 18.sp),
            ),
            Text(
              'for your food ',
              style: TextStyle(color: ThemeColors.light, fontSize: 18.sp),
            ),
            SizedBox(height: 70.h),
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
                  if (index == 2) {
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
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const MainScreen()));
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15.r),
                  child: ColoredBox(
                    color: ThemeColors.primary,
                    child: SizedBox(
                      height: 68.h,
                      width: 325.w,
                      child: Center(
                        child: Text('Get Started',
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
