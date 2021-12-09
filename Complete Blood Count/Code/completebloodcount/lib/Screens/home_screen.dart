import 'package:flutter/material.dart';

import 'menu_screen.dart';

// ignore: use_key_in_widget_constructors
import 'package:flutter/material.dart';





class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;

  @override
  void initState() {
    super.initState();
    animationController = new AnimationController(
      vsync: this,
      duration: new Duration(seconds: 7),
    );

    animationController.repeat();
  }

 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Demo"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            RotationTransition(
              turns: Tween(begin: 0.0, end: 1.0).animate(animationController),
              child: Column(children: [Image.asset('images/dnap.jpg')],),
            ),
            
           
          ],
        ),
      ),
    );
  }
}
