import 'package:flutter/material.dart';

import 'menu_screen.dart';

// ignore: use_key_in_widget_constructors
class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Menu(
      'Home Page',
      ListView(
        children: [
          Center(
            child: Column(
              children: [Image.asset('images/home.jpg')],
            ),
          )
        ],
      ),
    );
  }
}
