import 'package:completebloodcount/Screens/cbc_test.dart';
import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CBC'),
        backgroundColor: Colors.black,
      ),
      body: ListView(
        children: [
          Center(
            child: Column(
              children: [Image.asset('images/home.jpg')],
            ),
          )
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
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
              onTap: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => MyHomePage()));
              },
            ),
            ListTile(
              title: const Text('Examine Self'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => cbcTest()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
