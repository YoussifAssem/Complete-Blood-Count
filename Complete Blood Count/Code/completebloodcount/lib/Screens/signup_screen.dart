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
  User user = User();
  final name = TextEditingController();
  final e = TextEditingController();
  final p = TextEditingController();
  final pN = TextEditingController();
  final cP = TextEditingController();
  String text = '';

  FocusNode f1 = FocusNode();
  FocusNode f2 = FocusNode();
  FocusNode f3 = FocusNode();
  FocusNode f4 = FocusNode();
  FocusNode f5 = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.pink[900],
          title: const Text(
            'Sign Up',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Padding(
            padding: const EdgeInsets.all(2),
            child: ListView(children: <Widget>[
              const Center(
                  child: Text('Sign Up',
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic))),
              const SizedBox(height: 25),
              TextFormField(
                focusNode: f1,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w800,
                ),
                keyboardType: TextInputType.emailAddress,
                controller: name,
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.deny(RegExp('[^a-zA-Z]')),
                ],
                decoration: InputDecoration(
                  contentPadding:
                      const EdgeInsets.only(left: 20, top: 10, bottom: 10),
                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(90.0)),
                    borderSide: BorderSide.none,
                  ),
                  filled: true,
                  fillColor: Colors.grey[350],
                  hintText: 'Name',
                  hintStyle: const TextStyle(
                    color: Colors.black26,
                    fontSize: 18,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
              const SizedBox(height: 25.0),
              TextFormField(
                focusNode: f2,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w800,
                ),
                keyboardType: TextInputType.emailAddress,
                controller: e,
                decoration: InputDecoration(
                  contentPadding:
                      const EdgeInsets.only(left: 20, top: 10, bottom: 10),
                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(90.0)),
                    borderSide: BorderSide.none,
                  ),
                  filled: true,
                  fillColor: Colors.grey[350],
                  hintText: 'Email',
                  hintStyle: const TextStyle(
                    color: Colors.black26,
                    fontSize: 18,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
              const SizedBox(
                height: 25.0,
              ),
              TextFormField(
                focusNode: f5,
                maxLength: 11,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w800,
                ),
                controller: pN,
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.deny(RegExp('[^0-9]')),
                ],
                decoration: InputDecoration(
                  contentPadding:
                      const EdgeInsets.only(left: 20, top: 10, bottom: 10),
                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(90.0)),
                    borderSide: BorderSide.none,
                  ),
                  filled: true,
                  fillColor: Colors.grey[350],
                  hintText: 'Phone Number',
                  hintStyle: const TextStyle(
                    color: Colors.black26,
                    fontSize: 18,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
              TextFormField(
                focusNode: f3,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w800,
                ),
                //keyboardType: TextInputType.visiblePassword,
                controller: p,
                decoration: InputDecoration(
                  contentPadding:
                      const EdgeInsets.only(left: 20, top: 10, bottom: 10),
                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(90.0)),
                    borderSide: BorderSide.none,
                  ),
                  filled: true,
                  fillColor: Colors.grey[350],
                  hintText: 'Password',
                  hintStyle: const TextStyle(
                    color: Colors.black26,
                    fontSize: 18,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                obscureText: true,
              ),
              const SizedBox(
                height: 25.0,
              ),
              TextFormField(
                focusNode: f4,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w800,
                ),
                controller: cP,
                decoration: InputDecoration(
                  contentPadding:
                      const EdgeInsets.only(left: 20, top: 10, bottom: 10),
                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(90.0)),
                    borderSide: BorderSide.none,
                  ),
                  filled: true,
                  fillColor: Colors.grey[350],
                  hintText: 'Confirm Password',
                  hintStyle: const TextStyle(
                    color: Colors.black26,
                    fontSize: 18,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                obscureText: true,
              ),
              const SizedBox(
                height: 25.0,
              ),
              Row(
                children: [
                  const Text(
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
                  const Text(
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
                ],
              ),
              SizedBox(
                height: 50,
                child: ElevatedButton(
                  child: const Text(
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
                        pN.text == '' ||
                        p.text == '' ||
                        cP.text == '')
                      {
                        text = 'Error, Please fill all requirements',
                        showAlertDialog(context),
                      }
                    else if (p.text != cP.text)
                      {
                        text = 'Error, Password is not match',
                        showAlertDialog(context),
                      }
                    else if (!e.text.contains('@'))
                      {
                        text = 'Email format is not true',
                        showAlertDialog(context),
                      }
                    else if (pN.text.length <= 10)
                      {
                        text = 'Error, Phone Number less than 11 Number',
                        showAlertDialog(context),
                      }
                    else
                      {
                        if (user.signUp(
                                name: name.text,
                                email: e.text,
                                phone: pN.text,
                                password: p.text,
                                gender: gender,
                                type: type) ==
                            'Error')
                          {
                            text = 'Error in Data',
                            showAlertDialog(context),
                          }
                        else
                          {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => logInScreen()),
                            )
                          }
                      }
                  },
                ),
              )
            ])));
  }

  showAlertDialog(
    BuildContext context,
  ) {
    // Create button
    Widget okButton = TextButton(
      child: const Text("OK"),
      onPressed: () {
        Navigator.of(context).pop();
      },
    );

    // Create AlertDialog
    AlertDialog alert = AlertDialog(
      title: const Text("Alert"),
      content: Text(text),
      actions: [
        okButton,
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}
