import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:sawara_solutions_pvt_ltd/constants/colors/app_colors.dart';
import 'package:sawara_solutions_pvt_ltd/controller/bottomnavigationbar_controller.dart';
import 'package:sawara_solutions_pvt_ltd/view/description/description_screen.dart';
import 'package:sawara_solutions_pvt_ltd/view/meetup/meetup_screen.dart';

class BottomnavigationbarView extends GetView<BottomnavigationbarController> {
  final NavBarEssentials? navBarEssentials;
  const BottomnavigationbarView({Key? key, this.navBarEssentials})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      navBarHeight:
          navBarEssentials?.navBarHeight ?? kBottomNavigationBarHeight,
      screens: _buildScreens(),
      items: _navBarsItems(),
      confineInSafeArea: true,
      backgroundColor: Colors.white,
      handleAndroidBackButtonPress: true,
      resizeToAvoidBottomInset: true,
      stateManagement: true,
      hideNavigationBarWhenKeyboardShows: true,
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.circular(10.0),
        colorBehindNavBar: Colors.white,
      ),
      popAllScreensOnTapOfSelectedTab: true,
      itemAnimationProperties: const ItemAnimationProperties(
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: const ScreenTransitionAnimation(
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),
      navBarStyle: NavBarStyle.style8,
    );
  }

  List<Widget> _buildScreens() {
    return [
      const MeetUpScreen(),
      const MeetUpScreen(),
      const MeetUpScreen(),
      const MeetUpScreen(),
      const MeetUpScreen()
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: const Icon(
          CupertinoIcons.house_alt,
        ),
        title: ("Home"),
        activeColorPrimary: AppColors.blackColor,
        inactiveColorPrimary: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(CupertinoIcons.briefcase),
        title: ("Prolet"),
        activeColorPrimary: AppColors.blackColor,
        inactiveColorPrimary: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        // activeColorSecondary: AppColors.mainColor,
        icon: const Icon(Icons.add),
        title: ('Meetup'),
        activeColorPrimary: AppColors.blackColor,
        inactiveColorPrimary: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.system_update_alt),
        title: ("Explore"),
        activeColorPrimary: AppColors.blackColor,
        inactiveColorPrimary: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.message_rounded),
        title: ("Account"),
        activeColorPrimary: AppColors.blackColor,
        inactiveColorPrimary: Colors.grey,
      ),
    ];
  }
}
