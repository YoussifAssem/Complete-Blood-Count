// ignore_for_file: prefer_const_constructors

import 'package:completebloodcount/Classes/user.dart';
import 'package:completebloodcount/Screens/login.dart';
import 'package:completebloodcount/dataBase/sql_helper.dart';
import 'package:flutter/material.dart';

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
  SQL_Helper sql = SQL_Helper();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text(
            'Sign Up',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Padding(
            padding: EdgeInsets.only(left: 2, top: 30),
            child: ListView(children: <Widget>[
              image(),
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
                  textAlign: TextAlign.center,
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
                  textAlign: TextAlign.center,
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
                  textAlign: TextAlign.center,
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
                  textAlign: TextAlign.center,
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
                  textAlign: TextAlign.center,
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
                  textAlign: TextAlign.center,
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
              RaisedButton(
                child: Text(
                  'Sign Up',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                color: Colors.black,
                onPressed: () => {
                  if (fN.text == '' ||
                      sN.text == '' ||
                      e.text == '' ||
                      p.text == '' ||
                      bD.text == '' ||
                      pN.text == '')
                    {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text("Please Fill All Requriements"),
                      ))
                    }
                  else
                    {
                      user.setFirstName(fN.text),
                      user.setLastName(sN.text),
                      user.setEmail(e.text),
                      user.setPassword(p.text),
                      user.setBirthDate(bD.text),
                      user.setPhoneNumber(pN.text),
                      user.setGender(gender),
                      sql.setData(user),
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => logInScreen()),
                      )
                    },
                },
              ),
            ])));
  }
}

// ignore: camel_case_types, use_key_in_widget_constructors
class image extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage image = AssetImage('images/DNA.jpg');
    Image myImg = Image(
      image: image,
      width: 500,
      height: 800,
    );
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: image,
          fit: BoxFit.cover,
        ),
      ),
      child: myImg,
    );
  }
}
