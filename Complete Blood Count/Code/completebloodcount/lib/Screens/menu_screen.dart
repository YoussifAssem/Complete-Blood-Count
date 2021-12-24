import 'package:completebloodcount/Screens/cbc_test_screen.dart';
import 'package:completebloodcount/Screens/chat_screen.dart';
import 'package:completebloodcount/Screens/home_screen.dart';
import 'package:completebloodcount/Screens/login_screen.dart';
import 'package:completebloodcount/editprofileone.dart';
import 'package:completebloodcount/widgets/searchtwo.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  final String _text;
  final Widget _body;
  // ignore: use_key_in_widget_constructors
  const Menu(this._text, this._body);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_text),
        backgroundColor: Colors.blue[600],
        actions: [
          IconButton(
            onPressed: () {
              //_auth.signOut();
              Navigator.pop(context);
            },
            icon: const Icon(Icons.close),
          )
        ],
      ),
      body: _body,
      drawer: Drawer(
        child: Material(
          color: Colors.blue[600],
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                ),
                child: Text(
                  'My account',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              ListTile(
                leading: const Icon(
                  Icons.home,
                  color: Colors.white,
                ),
                title: const Text('Home Page',
                    style: TextStyle(color: Colors.white)),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HomePage()));
                },
              ),
              ListTile(
                leading: const Icon(
                  Icons.bloodtype,
                  color: Colors.white,
                ),
                title: const Text('Examine Self',
                    style: TextStyle(color: Colors.white)),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => cbcTest()));
                },
              ),
              ListTile(
                leading: const Icon(
                  Icons.chat,
                  color: Colors.white,
                ),
                title: const Text('Messages',
                    style: TextStyle(color: Colors.white)),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ChatScreen()));
                },
              ),
              ListTile(
                leading: const Icon(
                  Icons.edit,
                  color: Colors.white,
                ),
                title: const Text('Edit profile',
                    style: TextStyle(color: Colors.white)),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const EditProfilePage()));
                },
              ),
              ListTile(
                leading: const Icon(
                  Icons.search,
                  color: Colors.white,
                ),
                title:
                    const Text('Search', style: TextStyle(color: Colors.white)),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const search()));
                },
              ),
              ListTile(
                leading: const Icon(
                  Icons.logout,
                  color: Colors.white,
                ),
                title: const Text('log out',
                    style: TextStyle(color: Colors.white)),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => logInScreen()));
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
