import 'package:academy/notification/notificationPage.dart';
import 'package:academy/screens/featured_screen.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';


import '../screens/settings_screen.dart';

class CustomNavigationBar extends StatefulWidget {
  const CustomNavigationBar({Key? key}) : super(key: key);

  @override
  State<CustomNavigationBar> createState() => _CustomNavigationBarState();
}

class _CustomNavigationBarState extends State<CustomNavigationBar> {
  PageController _pageController = PageController(initialPage: 0);

  static const List<Widget> _pages = <Widget>[
    FeaturedScreen(),
    
    SettingsScreen(),
  ];

  void _onTabTapped(int index) {
    _pageController.jumpToPage(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: _pages,
      ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Color(0xffFCCD00),
        color: Color(0xff29404E),
        animationDuration: Duration(milliseconds: 300),
        onTap: _onTabTapped,
        items: [
          Icon(Icons.home, color: Colors.white),
          Icon(
            Icons.assured_workload_outlined,
            color: Colors.white,
          ),
          Icon(
            Icons.settings,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
