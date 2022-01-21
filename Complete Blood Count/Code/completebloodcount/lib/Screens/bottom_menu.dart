// ignore_for_file: unused_field

import 'package:completebloodcount/Screens/cbc_test_screen.dart';
import 'package:completebloodcount/Screens/chat_screen.dart';
import 'package:completebloodcount/Screens/editprofileone.dart';
import 'package:completebloodcount/Screens/history.dart';
import 'package:completebloodcount/Screens/home_screen.dart';
import 'package:completebloodcount/Screens/login_screen.dart';
import 'package:completebloodcount/models/user.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:completebloodcount/Screens/doctor_screen.dart';

class BottomMenu extends StatefulWidget {
  static const String screenRoute = 'bottom_menu';

  @override
  _BottomMenu createState() => _BottomMenu();
}

class _BottomMenu extends State<BottomMenu> {
  User profile = User();
  int currentIndex = 0;
  static const IconData local_hospital =
      IconData(0xe396, fontFamily: 'MaterialIcons');
  final screens = [
    HomePage(),
    Doctor(),
    ChatScreen(),
    cbcTest(),
    History(),
    EditProfilePage(),
    logInScreen(),
  ];
  @override
  Widget build(BuildContext) => Scaffold(
        body: screens[currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          onTap: (index) {
            if (index == 6) {
              profile.signOut();
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => logInScreen()));
            }
            ;
            setState(() => currentIndex = index);
          },
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.blue.shade500,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white70,
          iconSize: 30,
          selectedFontSize: 20,
          unselectedFontSize: 15,

          //showSelectedLabels: false,
          showUnselectedLabels: false,

          currentIndex: currentIndex,

          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.local_hospital),
              label: 'Doctor',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.chat),
              label: 'chat',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.analytics),
              label: 'Examine',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.history),
              label: 'History',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Account',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.logout),
              label: 'Logout',
            ),
          ],
        ),
      );
}
