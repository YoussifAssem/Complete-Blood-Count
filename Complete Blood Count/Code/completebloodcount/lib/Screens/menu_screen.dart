import 'package:completebloodcount/Screens/cbc_test_screen.dart';
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
                  image: AssetImage('images/home.jpg'),
                  fit: BoxFit.fill,
                ),

                //Center(child: Column(children: [SizedBox(height: 20), Image.asset('images/home.jpg')],),)
              ),
              child: Text('My account'),
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
