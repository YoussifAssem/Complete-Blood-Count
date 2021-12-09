import 'package:completebloodcount/Screens/cbc_test_screen.dart';
import 'package:completebloodcount/Screens/chat_screen.dart';
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
        backgroundColor: Colors.pink[900],
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
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.black,

                image: DecorationImage(
                  image: AssetImage('images/dnap.jpg'),
                  fit: BoxFit.none,
                ),

                //Center(child: Column(children: [SizedBox(height: 20), Image.asset('images/home.jpg')],),)
              ),
              child: Text(
                'My account',
                style: TextStyle(color: Colors.white),
              ),
            ),
            ListTile(
              title: const Text('Home Page'),
              onTap: () {},
            ),
            ListTile(
              title: const Text('Examine Self'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => cbcTest()));
              },
            ),
            ListTile(
              title: const Text('Messages'),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ChatScreen()));
              },
            ),
            ListTile(
              title: const Text('Edit profile'),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const EditProfilePage()));
              },
            ),
            ListTile(
              title: const Text('Search'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const search()));
              },
            )
          ],
        ),
      ),
    );
  }
}
