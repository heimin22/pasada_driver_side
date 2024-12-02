import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
import 'package:pasada_driver_side/NavigationPages/activity_page.dart';
import 'package:pasada_driver_side/NavigationPages/home_page.dart';
import 'package:pasada_driver_side/NavigationPages/notification_page.dart';
import 'package:pasada_driver_side/NavigationPages/profile_page.dart';
import 'package:pasada_driver_side/NavigationPages/settings_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  MainPageState createState() => MainPageState();
}

class MainPageState extends State<MainPage> {
  List pages = [
    HomePage(),
    ActivityPage(),
    NotificationPage(),
    ProfilePage(),
    SettingsPage(),
  ];

  int currentIndex = 0;
  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],

      //BOTTOM NAVIGATION
      bottomNavigationBar: BottomNavigationBar(
        // type: BottomNavigationBarType.fixed,
        onTap: onTap,
        currentIndex: currentIndex,
        unselectedItemColor: Colors.grey.withOpacity(.8),
        selectedItemColor:  const Color(0xFF5F3FC4),
        showSelectedLabels: true,
        showUnselectedLabels: true,

        selectedFontSize: 14,
        unselectedFontSize: 0,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              // SvgPicture.asset('assets/svg/homeIcon.svg'),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.history),
              // SvgPicture.asset('assets/svg/activityIcon.svg'),
              label: 'Activity'),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications),
              // SvgPicture.asset('assets/svg/notificationIcon.svg'),
              label: 'Notification'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              // SvgPicture.asset('assets/svg/profileIcon.svg'),
              label: 'Profile'),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              // SvgPicture.asset('assets/svg/settingsIcon.svg'),
              label: 'Settings'),
        ],
      ),
    );
  }
}
