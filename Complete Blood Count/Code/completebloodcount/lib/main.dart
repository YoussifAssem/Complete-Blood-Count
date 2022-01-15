// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/services.dart';
import 'Screens/login_screen.dart';
import 'Screens/home_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

// ignore: use_key_in_widget_constructors
class MyApp extends StatelessWidget {
  final _auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft,
    ]);
    return MaterialApp(
        //home: logInScreen(),
        initialRoute: _auth.currentUser !=
                null //dont need to log in every time added
            ? HomePage.screenRoute
            : //short if statment if loged in go to home if not go to login_screen
            logInScreen.screenRoute,
        routes: {
          HomePage.screenRoute: (context) => logInScreen(),
          logInScreen.screenRoute: (context) => logInScreen(),
        });
  }
}
