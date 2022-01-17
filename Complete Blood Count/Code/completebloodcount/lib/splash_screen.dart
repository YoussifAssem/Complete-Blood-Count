import 'dart:async';
import 'package:completebloodcount/main.dart';
import 'package:completebloodcount/Screens/login_screen.dart';
import 'package:flutter/material.dart';

class Splash extends StatefulWidget {

  @override
  _SplashScreenState createState() => _SplashScreenState();

}


class _SplashScreenState extends State<Splash> {
  @override

  void initState(){
    super.initState();
    Timer(Duration(seconds: 3), (){
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) => logInScreen()));
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[500],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('images/bluedna.jpg', height: 120,),
            SizedBox(height: 20,),
            CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
            )
          ],),
      ),
    );
  }
}
