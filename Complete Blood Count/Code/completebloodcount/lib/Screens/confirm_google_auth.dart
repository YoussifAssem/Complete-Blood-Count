import 'package:completebloodcount/Screens/bottom_menu.dart';
import 'package:completebloodcount/Screens/login_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class confirm extends StatelessWidget {

  @override
  Widget build(BuildContext context) => Scaffold(
    body: StreamBuilder(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting){
        print('1');
        return Center(child: CircularProgressIndicator());

        } else if (snapshot.hasError) {
          print('2');
          return Center(child: Text('Something went wrong'));

        }
        else if (snapshot.hasData){
           print('3');
          return BottomMenu();
        }
          else {
        print('4');   
        return logInScreen();
        }
      },
    ),
  );

}