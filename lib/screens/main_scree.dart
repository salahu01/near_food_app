import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:near_food_app/constants/themes.dart';
import 'package:near_food_app/screens/pages/cart_page/cart_page.dart';
import 'package:near_food_app/screens/pages/home_page/home_page.dart';
import 'package:near_food_app/screens/pages/info_page/info_page.dart';
import 'package:near_food_app/screens/pages/search_page/search_page.dart';
import 'package:provider/provider.dart';

import '../providers/main_page_provider.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

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
          child: PageView(
            controller: Provider.of<MainScreenProvider>(context,listen: false).controller,
            physics:const NeverScrollableScrollPhysics(),
            children: const <Widget>[HomePage(), SearchPage(), CartPage(), InfoPage()])),
      bottomNavigationBar: SizedBox(
        height: 100.sp,
        child: BottomAppBar(
          color: Colors.transparent,
          elevation: 0,
          child: Padding(
            padding: EdgeInsets.only(
              right: 10.w,
              left: 10.w
            ),
            child: GNav(
                tabBackgroundColor: ThemeColors.extraLight,
                tabBorderRadius: 20.r,
                textStyle: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: ThemeColors.primary,
                    fontSize: 17.sp,
                    overflow: TextOverflow.ellipsis),
                gap: 10.sp, // the tab button gap between icon and text
                color: ThemeColors.light, // unselected icon color
                activeColor: ThemeColors.primary,
                padding: EdgeInsets.only(
                  left: 10.sp,
                  right: 10.sp,
                  top: 15.sp,
                  bottom: 15.sp,
                ),
                tabMargin: EdgeInsets.only(
                  bottom: 15.sp,
                  left: 7.sp,
                  right: 7.sp,
                  top: 6.sp,
                ),
                selectedIndex: context.watch<MainScreenProvider>().index,
                onTabChange: (index) {
                  Provider.of<MainScreenProvider>(context, listen: false).index =
                      index;
                  Provider.of<MainScreenProvider>(context, listen: false)
                      .controller
                      .jumpToPage(index);
                },
                tabs: const [
                  GButton(
                    icon: Icons.home_outlined,
                    text: 'Home',
                  ),
                  GButton(
                    icon: Icons.search,
                    text: 'Search',
                  ),
                  GButton(
                    icon: Icons.shopping_bag_outlined,
                    text: 'Cart',
                  ),
                  GButton(
                    icon: Icons.person,
                    text: 'Info',
                  )
                ]),
          ),
        ),
      ),
    );
  }
}