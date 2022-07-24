import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constants/themes.dart';
import '../../../sample/sample.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        toolbarHeight: 80.h,
        title: Center(
          child: Text(
            'Shipped',
            style: TextStyle(
                color: ThemeColors.dark,
                fontSize: 25.sp,
                fontWeight: FontWeight.w600),
          ),
        ),
      ),
      body: ListView.separated(
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
                    fontSize: 20.sp,
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
    );
  }
}
