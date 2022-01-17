import 'package:completebloodcount/Screens/cbc_test_screen.dart';
import 'package:completebloodcount/Screens/chat_screen.dart';
import 'package:completebloodcount/Screens/home_screen.dart';
import 'package:completebloodcount/Screens/login_screen.dart';
import 'package:completebloodcount/editprofileone.dart';
import 'package:completebloodcount/models/user.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomMenu extends StatefulWidget {
  static const String screenRoute = 'bottom_menu';
  const BottomMenu({Key? key}) : super(key: key);

  @override
  _BottomMenu createState() => _BottomMenu();
}

class _BottomMenu extends State<BottomMenu> {
  User profile = User();
  int currentIndex = 0;
  final screens = [
    HomePage(),
    ChatScreen(),
    EditProfilePage(),
    cbcTest(),
    logInScreen(),
  ];
  @override
  Widget build(BuildContext) => Scaffold(
        body: screens[currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          onTap: (index) {
            if (index == 4) {
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
              icon: Icon(Icons.chat),
              label: 'chat',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Account',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.analytics),
              label: 'Examine',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.logout),
              label: 'Logout',
            ),
          ],
        ),
      );
}
