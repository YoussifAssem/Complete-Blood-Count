// ignore_for_file: prefer_const_constructors

//import 'package:completebloodcount/splash_screen.dart';
import 'package:completebloodcount/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'Screens/login_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'Screens/bottom_menu.dart';
import 'google_sign_in.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

// ignore: use_key_in_widget_constructors
class MyApp extends StatelessWidget {
  // auth
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft,
    ]);
    return ChangeNotifierProvider(
      create: (context) => GoogleSignInProvider(),
      child: MaterialApp(
        home: Splash(),
      ),
    );
  }
}

class FirstScreen extends StatefulWidget {
  @override
  _FirstScreen createState() => _FirstScreen();
}

class _FirstScreen extends State<FirstScreen> {
  @override
  // ignore: override_on_non_overriding_member
  final _auth = FirebaseAuth.instance;
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: ((_auth.currentUser) !=
              null //dont need to log in every time added
          ? (BottomMenu.screenRoute)
          : //short if statment if loged in go to home if not go to login_screen
          (logInScreen.screenRoute)),
      routes: {
        BottomMenu.screenRoute: (context) => logInScreen(),
        logInScreen.screenRoute: (context) => logInScreen(),
      },
    );
  }
}
