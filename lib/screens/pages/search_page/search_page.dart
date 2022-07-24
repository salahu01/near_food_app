import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constants/themes.dart';
import '../../../sample/sample.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.transparent,
      body: Column(
        children: [
          SizedBox(height: 25.h),
          Row(
            children: [
              SizedBox(width: 10.w),
              Flexible(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20.r),
                  child: TextField(
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 23.sp,
                        fontWeight: FontWeight.w700,
                        letterSpacing: 0.5,
                        decorationThickness: 0),
                    maxLines: 1,
                    decoration: InputDecoration(
                      isCollapsed: true,
                      contentPadding: EdgeInsets.all(20.r),
                      border: InputBorder.none,
                      filled: true,
                      fillColor: ThemeColors.light,
                    ),
                  ),
                ),
              ),
              SizedBox(width: 10.w),
              ClipRRect(
                borderRadius: BorderRadius.circular(10.r),
                child: ColoredBox(
                  color: ThemeColors.light,
                  child: SizedBox(
                      width: 60.w,
                      height: 63.h,
                      child: Icon(Icons.candlestick_chart_outlined,
                          size: 35.sp, color: ThemeColors.dark)),
                ),
              ),
              SizedBox(width: 10.w)
            ],
          ),
          SizedBox(height: 20.h),
          ListView.separated(
            shrinkWrap: true,
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
        ],
      ),
    );
  }
}
