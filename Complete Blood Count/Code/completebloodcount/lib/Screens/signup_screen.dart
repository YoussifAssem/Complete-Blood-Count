// ignore_for_file: prefer_const_constructors

import 'package:completebloodcount/Screens/login_screen.dart';
import 'package:completebloodcount/models/user.dart';
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
  String type = 'Patient';
  late User user;
  final name = TextEditingController();
  final e = TextEditingController();
  final p = TextEditingController();
  final pN = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.pink[900],
          title: Text(
            'Sign Up',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Padding(
            padding: EdgeInsets.all(8),
            child: ListView(children: <Widget>[
              Text(
                'Name',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10, width: 10),
              TextFormField(
                  controller: name,
                  autocorrect: true,
                  decoration: InputDecoration(
                      labelText: "Enter Name",
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
              const SizedBox(height: 20, width: 20),
              Text(
                'Type',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10, width: 10),
              DropdownButton<String>(
                value: type,
                onChanged: (String? newValue) {
                  setState(() {
                    type = newValue!;
                  });
                },
                items: <String>['Patient', 'Doctor']
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
                  style: ElevatedButton.styleFrom(primary: Colors.pink[900]),
                  onPressed: () => {
                    if (name.text == '' ||
                        e.text == '' ||
                        p.text == '' ||
                        pN.text == '' ||
                        !e.text.contains('@'))
                      {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: Text("Please Fill All the Requriements"),
                        ))
                      }
                    else
                      {
                        User.addUser(
                            name: name.text,
                            email: e.text,
                            phone: pN.text,
                            password: p.text,
                            gender: gender,
                            type: type),
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
