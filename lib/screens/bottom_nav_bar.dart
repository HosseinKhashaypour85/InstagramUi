import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:igui/screens/add_post_screen.dart';
import 'package:igui/screens/explore_screen.dart';
import 'package:igui/screens/login_screen.dart';
import 'package:igui/screens/main_screen.dart';
import 'package:igui/screens/profile_screen.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';

class BottomNavBarScreen extends StatefulWidget {
  const BottomNavBarScreen({super.key});

  @override
  State<BottomNavBarScreen> createState() => _BottomNavBarScreenState();
}

class _BottomNavBarScreenState extends State<BottomNavBarScreen> {
  final PersistentTabController _controller =
      PersistentTabController(initialIndex: 0);

  List<Widget> _buildScreens() {
    return [
      const MainScreen(),
      ExploreScreen(),
      AddPostScreen(),
      ExploreScreen(),
      const ProfileScreen(),
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.home),
        activeColorPrimary: Colors.black,
        inactiveColorPrimary: Colors.grey,
        iconSize: 35,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.search),
        activeColorPrimary: Colors.black,
        inactiveColorPrimary: Colors.grey,
        iconSize: 35,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.add_box),
        activeColorPrimary: Colors.black,
        inactiveColorPrimary: Colors.grey,
        iconSize: 35,
        onPressed: (p0) {
          Navigator.push(
            context,
            PageRouteBuilder(
              transitionDuration: const Duration(milliseconds: 100),
              pageBuilder: (context, _, __) => AddPostScreen(),
              transitionsBuilder:
                  (context, animation, secondaryAnimation, child) {
                return SlideTransition(
                  position: animation.drive(
                    Tween<Offset>(
                      begin: const Offset(1.0, 0.0),
                      end: const Offset(0.0, 0.0),
                    ),
                  ),
                  child: child,
                );
              },
            ),
          );
        },
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.play_circle),
        activeColorPrimary: Colors.black,
        inactiveColorPrimary: Colors.grey,
        iconSize: 35,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.person),
        activeColorPrimary: Colors.black,
        inactiveColorPrimary: Colors.grey,
        iconSize: 35,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      controller: _controller,
      screens: _buildScreens(),
      items: _navBarsItems(),
      handleAndroidBackButtonPress: true,
      resizeToAvoidBottomInset: true,
      stateManagement: true,
      hideNavigationBarWhenKeyboardAppears: true,
      padding: const EdgeInsets.only(top: 8),
      backgroundColor: Colors.white,
      isVisible: true,
      navBarHeight: kBottomNavigationBarHeight,
      navBarStyle: NavBarStyle.style6,
      confineToSafeArea: true,
      animationSettings: const NavBarAnimationSettings(
        navBarItemAnimation: ItemAnimationSettings(
          duration: Duration(milliseconds: 400),
          curve: Curves.ease,
        ),
        screenTransitionAnimation: ScreenTransitionAnimationSettings(
          animateTabTransition: true,
          duration: Duration(milliseconds: 200),
          screenTransitionAnimationType: ScreenTransitionAnimationType.fadeIn,
        ),
      ),
    );
  }
}
