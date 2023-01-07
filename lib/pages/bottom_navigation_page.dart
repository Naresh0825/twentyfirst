import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent-tab-view.dart';
import 'package:twentyfirst/pages/activity/activity_page.dart';
import 'package:twentyfirst/pages/login_page.dart';
import 'package:twentyfirst/pages/profile/profile_page.dart';
import 'package:twentyfirst/pages/homepage/home_content.dart';

import '../../commons/exporter.dart';

class HomePageNavigationPage extends StatefulWidget {
  const HomePageNavigationPage({Key? key}) : super(key: key);

  @override
  State<HomePageNavigationPage> createState() => _HomePageNavigationPageState();
}

class _HomePageNavigationPageState extends State<HomePageNavigationPage> {
  int pageIndex = 0;

  final PersistentTabController _controller =
      PersistentTabController(initialIndex: 0);

  List<Widget> pages() {
    return const [
      HomeContent(),
      ActivityPage(),
      ProfilePage(),
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    const IconData restaurant = IconData(0xe532, fontFamily: 'MaterialIcons');
    return [
      PersistentBottomNavBarItem(
        icon: const Icon(CupertinoIcons.house_fill),
        inactiveIcon: const Icon(CupertinoIcons.house),
        title: ("Home"),
        activeColorPrimary: ColorManager.primary,
        inactiveColorPrimary: ColorManager.grey3,
      ),
      // PersistentBottomNavBarItem(
      //   icon: const Icon(CupertinoIcons.bubble_left_fill),
      //   inactiveIcon: const Icon(CupertinoIcons.bubble_left),
      //   title: ("Message"),
      //   activeColorPrimary: ColorManager.primary,
      //   inactiveColorPrimary: ColorManager.grey3,
      // ),
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.local_activity),
        inactiveIcon: const Icon(Icons.local_activity),
        title: ("Activity"),
        activeColorPrimary: ColorManager.primary,
        inactiveColorPrimary: ColorManager.grey3,
      ),
      // PersistentBottomNavBarItem(
      //   icon: const Icon(CupertinoIcons.creditcard_fill),
      //   inactiveIcon: const Icon(CupertinoIcons.creditcard),
      //   title: ("Bill"),
      //   activeColorPrimary: ColorManager.primary,
      //   inactiveColorPrimary: ColorManager.grey3,
      // ),
      PersistentBottomNavBarItem(
        icon: const Icon(CupertinoIcons.person_fill),
        inactiveIcon: const Icon(CupertinoIcons.person),
        title: ("Profile"),
        activeColorPrimary: ColorManager.primary,
        inactiveColorPrimary: ColorManager.grey3,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // drawer: SidePage(),
      body: PersistentTabView(
        context,
        controller: _controller,
        screens: pages(),
        items: _navBarsItems(),
        confineInSafeArea: true,
        backgroundColor: Colors.white,
        handleAndroidBackButtonPress: true,
        resizeToAvoidBottomInset: true,
        hideNavigationBarWhenKeyboardShows: true,
        decoration: NavBarDecoration(
          borderRadius: BorderRadius.circular(10.0),
        ),
        popAllScreensOnTapOfSelectedTab: true,
        navBarStyle: NavBarStyle.style6,
      ),
    );
  }
}
