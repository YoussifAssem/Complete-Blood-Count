import 'package:completebloodcount/Screens/signup_screen.dart';
import 'package:completebloodcount/models/user.dart';
import 'package:flutter/material.dart';
import 'package:completebloodcount/Screens/bottom_menu.dart';
import 'package:provider/provider.dart';

import '../google_sign_in.dart';

// ignore: camel_case_types, use_key_in_widget_constructors, must_be_immutable
class logInScreen extends StatefulWidget {
  static const String screenRoute = 'login_screen';
  @override
  State<StatefulWidget> createState() {
    return _logInScreen();
  }
}

// ignore: camel_case_types
class _logInScreen extends State<logInScreen> {
  final email = TextEditingController();
  final password = TextEditingController();
  User user = User();
  late String text;
  FocusNode f1 = FocusNode();
  FocusNode f2 = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('LogIn'),
        backgroundColor: Colors.blue[600],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            const SizedBox(
              height: 30,
            ),
            const Text(
              'WELCOME',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 33.0,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 5,
            ),
            Row(children: [
              const Text(
                'new to this app?',
                style: TextStyle(color: Colors.black, fontSize: 14.0),
              ),
              const SizedBox(
                width: 5,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.blue[600]),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SignUp()),
                    );
                  },
                  child: const Text('sign up')),
            ]),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              focusNode: f1,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w800,
              ),
              keyboardType: TextInputType.emailAddress,
              controller: email,
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
              height: 20,
            ),
            TextFormField(
              focusNode: f2,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w800,
              ),
              //keyboardType: TextInputType.visiblePassword,
              controller: password,
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
              height: 20,
            ),
            const Text('forget password',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 14.0,
                  decoration: TextDecoration.underline,
                  decorationThickness: 1,
                )),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(primary: Colors.blue[600]),
              child: const Text('Log In'),
              onPressed: () async {
                if (email.text == '' || password.text == '') {
                  text = 'Error, Please fill all requirements';
                  showAlertDialog(context);
                } else if (!email.text.contains('@')) {
                  text = 'Email format is not true';
                  showAlertDialog(context);
                } else {
                  if (await user.login(email.text, password.text) == 'Error') {
                    text = 'Error, Email or Password is incorrect';
                    showAlertDialog(context);
                  } else {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => BottomMenu()),
                    );
                  }
                }
              },
            ),
            const SizedBox(
              height: 20,
            ),
            const Text('or log in with:',
                style: TextStyle(color: Colors.black)),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // ignore: deprecated_member_use
                ElevatedButton(
                  // ignore: prefer_const_constructors
                  onPressed: () {},
                  child: Padding(
                    padding: const EdgeInsets.only(right: 0, top: 1),
                    // ignore: deprecated_member_use
                    child: Image.asset(
                      'images/facebook.png',
                      width: 40,
                      height: 50,
                    ),
                  ),

                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    onPrimary: Colors.black,
                  ),
                ),

                // ignore: deprecated_member_use
                ElevatedButton(
                  // ignore: prefer_const_constructors
                  onPressed: () {
                    final provider = Provider.of<GoogleSignInProvider>(context,
                        listen: false);
                    provider.googleLogin();
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    onPrimary: Colors.black,
                  ),
                  // ignore: deprecated_member_use
                  child: Image.asset(
                    'images/Google.png',
                    width: 40,
                    height: 50,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
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

class BuildButton extends StatelessWidget {
  final Image iconImage;
  final String textButton;
  // ignore: prefer_const_constructors_in_immutables, use_key_in_widget_constructors
  BuildButton({required this.iconImage, required this.textButton});
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 0.06,
        width: 0.36,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.grey)),
        child: Row(
          children: [
            iconImage,
            const SizedBox(
              width: 5,
            ),
            Text(textButton),
          ],
        ));
  }
}
