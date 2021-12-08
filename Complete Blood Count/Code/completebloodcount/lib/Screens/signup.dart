// ignore_for_file: prefer_const_constructors

import 'package:completebloodcount/Classes/user.dart';
import 'package:completebloodcount/Screens/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// ignore: use_key_in_widget_constructors
class SignUp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SignUp();
  }
}

class _SignUp extends State<SignUp> {
  // ignore: unused_field
  String gender = 'Male';
  User user = User();
  final fN = TextEditingController();
  final sN = TextEditingController();
  final e = TextEditingController();
  final p = TextEditingController();
  final bD = TextEditingController();
  final pN = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue[50],
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text(
            'Sign Up',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Padding(
            padding: EdgeInsets.all(8),
            child: ListView(children: <Widget>[
              Text(
                'First Name',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10, width: 10),
              TextFormField(
                  controller: fN,
                  autocorrect: true,
                  decoration: InputDecoration(
                      labelText: "Enter First Name",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ))),
              const SizedBox(height: 20, width: 20),
              Text(
                'Second Name',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10, width: 10),
              TextFormField(
                  controller: sN,
                  autocorrect: true,
                  decoration: InputDecoration(
                      labelText: "Enter Second Name",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ))),
              const SizedBox(height: 20, width: 20),
              Text(
                'Email',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10, width: 10),
              TextFormField(
                  autocorrect: true,
                  controller: e,
                  decoration: InputDecoration(
                      labelText: "Enter Your Email",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ))),
              const SizedBox(height: 20, width: 20),
              Text(
                'Password',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10, width: 10),
              TextFormField(
                  controller: p,
                  obscureText: true,
                  decoration: InputDecoration(
                      labelText: "Password",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ))),
              const SizedBox(height: 20, width: 20),
              Text(
                'Birth Date',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10, width: 10),
              TextFormField(
                  controller: bD,
                  autocorrect: true,
                  decoration: InputDecoration(
                      labelText: "Enter Birth Date",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ))),
              const SizedBox(height: 20, width: 20),
              Text(
                'Phone Number',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10, width: 10),
              TextFormField(
                  controller: pN,
                  maxLength: 11,
                  inputFormatters: <TextInputFormatter>[
                    FilteringTextInputFormatter.digitsOnly
                  ],
                  decoration: InputDecoration(
                      labelText: "Enter Phone Number",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ))),
              const SizedBox(height: 20, width: 20),
              Text(
                'Gender',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10, width: 10),
              DropdownButton<String>(
                value: gender,
                onChanged: (String? newValue) {
                  setState(() {
                    gender = newValue!;
                  });
                },
                items: <String>['Male', 'Female']
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
              const SizedBox(height: 20, width: 20),
              // ignore: deprecated_member_use
              SizedBox(
                height: 50,
                child: ElevatedButton(
                  child: Text(
                    'Sign Up',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  style: ElevatedButton.styleFrom(primary: Colors.black),
                  onPressed: () => {
                    if (fN.text == '' ||
                        sN.text == '' ||
                        e.text == '' ||
                        p.text == '' ||
                        bD.text == '' ||
                        pN.text == '' ||
                        !e.text.contains('@'))
                      {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: Text("Please Fill All Requriements"),
                        ))
                      }
                    else
                      {
                        User.addUser(fN.text, sN.text, bD.text, e.text, pN.text,
                            p.text, gender),
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => logInScreen()),
                        )
                      },
                  },
                ),
              )
            ])));
  }
}
