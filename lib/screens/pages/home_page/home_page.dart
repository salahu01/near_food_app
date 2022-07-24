import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:near_food_app/constants/themes.dart';
import 'package:near_food_app/sample/sample.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 25.r, top: 20.r),
              child: Row(
                children: [
                  Icon(
                    Icons.location_on,
                    size: 40.sp,
                    color: ThemeColors.primary,
                  ),
                  SizedBox(width: 20.w),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Home',
                          style: TextStyle(
                              color: ThemeColors.dark,
                              fontWeight: FontWeight.w700,
                              fontSize: 22.sp)),
                      SizedBox(height: 6.h),
                      Text('242 ST Marks Eve, Finland',
                          style: TextStyle(
                              color: ThemeColors.light,
                              fontWeight: FontWeight.w500,
                              fontSize: 16.sp)),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 50.h),
            SizedBox(
              height: 110.h,
              child: ListView.separated(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                separatorBuilder: (BuildContext context, int index) {
                  return SizedBox(width: 20.w);
                },
                itemBuilder: (BuildContext context, int index) {
                  if (index == 0) {
                    return Padding(
                      padding: EdgeInsets.only(left: 30.r),
                      child: Column(
                        children: [
                          Container(
                            width: 70.w,
                            height: 70.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.r),
                              color: ThemeColors.primary,
                            ),
                            child: Icon(
                              Icons.fastfood,
                              color: Colors.white,
                              size: 33.sp,
                            ),
                          ),
                          SizedBox(height: 10.h),
                          Text('All',
                              style: TextStyle(
                                  color: ThemeColors.dark,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 14.sp)),
                        ],
                      ),
                    );
                  } else {
                    return Column(
                      children: [
                        Container(
                          width: 70.w,
                          height: 70.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.r),
                            color: ThemeColors.extraLight,
                          ),
                          child: Icon(
                            HomePageSamples.icons[index - 1],
                            color: ThemeColors.light,
                            size: 33.sp,
                          ),
                        ),
                        SizedBox(height: 10.h),
                        Text(HomePageSamples.iconsLabels[index - 1],
                            style: TextStyle(
                                color: ThemeColors.light,
                                fontWeight: FontWeight.w700,
                                fontSize: 14.sp)),
                      ],
                    );
                  }
                },
              ),
            ),
            SizedBox(height: 40.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.r),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Popular Restaurents',
                      style: TextStyle(
                          color: ThemeColors.dark,
                          fontWeight: FontWeight.w700,
                          fontSize: 22.sp)),
                  Icon(Icons.candlestick_chart_outlined,
                      size: 35.sp, color: ThemeColors.dark)
                ],
              ),
            ),
            SizedBox(height: 30.h),
            ColoredBox(
              color: ThemeColors.extraLight,
              child: ListView.separated(
                shrinkWrap: true,
                primary: false,
                itemCount: 4,
                separatorBuilder: (BuildContext context, int index) {
                  return const Expanded(child: SizedBox());
                },
                itemBuilder: (BuildContext context, int index) {
                  return SizedBox(
                    height: 100.h,
                    child: ListTile(
                      leading: Container(
                        width: 70.w,
                        height: 70.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.r),
                          color: HomePageSamples.backgroundColors[index],
                        ),
                        child: Icon(
                          HomePageSamples.hotelIocns[index],
                          color: Colors.white,
                          size: 33.sp,
                        ),
                      ),
                      title: Text(
                        HomePageSamples.hotelNames[index],
                        style: TextStyle(
                            color: ThemeColors.dark,
                            fontSize: 25.sp,
                            fontWeight: FontWeight.w600),
                      ),
                      subtitle: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.star,
                            size: 15,
                            color: Color.fromARGB(255, 238, 166, 0),
                          ),
                          Text(
                            '  ${HomePageSamples.hotelRatings[index]} - ',
                            style: TextStyle(
                                color: ThemeColors.dark,
                                fontSize: 18.sp,
                                fontWeight: FontWeight.w600),
                          ),
                          Text(
                            HomePageSamples.hotelSpecial[index],
                            style: TextStyle(
                                color: ThemeColors.light,
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                      trailing: Text(
                        '50%OFF',
                        style: TextStyle(
                            color: ThemeColors.primary,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}