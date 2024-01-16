import 'package:baithuctap1/layouttong.dart';
import 'package:baithuctap1/screen1.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget> _buildScreens() {
      return [
        const LayoutTong(),
        const Screen2(),
        const Screen3(),
        const Screen4(),
        const Screen5()
      ];
    }
    List<PersistentBottomNavBarItem> _navBarsItems() {
      return [
        PersistentBottomNavBarItem(
          icon: SvgPicture.asset("assets/thitruong.svg"),
          title: ("Thị trường"),
          activeColorPrimary: const Color.fromRGBO(40, 60, 145, 1) ,
          inactiveColorPrimary: const Color.fromRGBO(0, 0, 0, 0.6),
        ),
        PersistentBottomNavBarItem(
          icon: SvgPicture.asset("assets/banggia.svg"),
          title: ("Bảng giá"),
          activeColorPrimary: const Color.fromRGBO(40, 60, 145, 1),
          inactiveColorPrimary: const Color.fromRGBO(0, 0, 0, 0.6),
        ),
        PersistentBottomNavBarItem(
          icon: SvgPicture.asset("assets/giaodich.svg"),
          title: ("Giao dịch"),
          activeColorPrimary: Colors.black,
          inactiveColorPrimary: Colors.black,
        ),
        PersistentBottomNavBarItem(
          icon: SvgPicture.asset("assets/timkiem.svg"),
          title: ("Tìm kiếm"),
          activeColorPrimary: const Color.fromRGBO(40, 60, 145, 1),
          inactiveColorPrimary: const Color.fromRGBO(0, 0, 0, 0.6),
        ),
        PersistentBottomNavBarItem(
          icon: SvgPicture.asset("assets/thongbao.svg"),
          title: ("Thông báo"),
          activeColorPrimary: const Color.fromRGBO(40, 60, 145, 1),
          inactiveColorPrimary: const Color.fromRGBO(0, 0, 0, 0.6),
        ),
      ];
    }
    PersistentTabController _controller;

    _controller = PersistentTabController(initialIndex: 0);
    return PersistentTabView(
      context,
      controller: _controller,
      screens: _buildScreens(),
      items: _navBarsItems(),
      confineInSafeArea: true,
      backgroundColor: Colors.white, // Default is Colors.white.
      handleAndroidBackButtonPress: true, // Default is true.
      resizeToAvoidBottomInset: true, // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
      stateManagement: true, // Default is true.
      hideNavigationBarWhenKeyboardShows: true, // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.circular(10.0),
        colorBehindNavBar: Colors.white,
      ),
      popAllScreensOnTapOfSelectedTab: true,
      popActionScreens: PopActionScreensType.all,
      itemAnimationProperties: const ItemAnimationProperties( // Navigation Bar's items animation properties.
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: const ScreenTransitionAnimation( // Screen transition animation on change of selected tab.
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),
      navBarStyle: NavBarStyle.style3, // Choose the nav bar style with this property.
    );
  }
}