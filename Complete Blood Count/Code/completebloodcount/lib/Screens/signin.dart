// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:completebloodcount/Classes/user.dart';
import 'package:completebloodcount/dataBase/sql_helper.dart';

// ignore: use_key_in_widget_constructors
class SignIn extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SignInState();
  }
}

class _SignInState extends State<SignIn> {
  User u = User();
  SQL_Helper db = SQL_Helper();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.brown[100],
        appBar: AppBar(
          backgroundColor: Colors.black,
          elevation: 0.0,
          title: Text(
            'Log In Page',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Container(
            padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
            // ignore: deprecated_member_use
            child: RaisedButton(
                child: Text('Sign In'),
                onPressed: () {
                  u.setFirstName('Kareem');
                  u.setLastName('Saad');
                  u.setBirthDate('20/1/2000');
                  u.setEmail('Kareem@gmail.com');
                  db.getData();
                  // db.insertStudent(u);
                })));
  }
}
