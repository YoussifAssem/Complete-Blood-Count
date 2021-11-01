import 'package:completebloodcount/Screens/home.dart';
import 'package:completebloodcount/Screens/signup.dart';
import 'package:flutter/material.dart';
import 'package:completebloodcount/widgets/login_form.dart';
import 'package:completebloodcount/widgets/login_option.dart';

// ignore: camel_case_types, use_key_in_widget_constructors
class logInScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LogIn'),
        backgroundColor: Colors.black,
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
            LogInForm(),
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
              child: const Text('Log In'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyHomePage()),
                );
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
            LoginOption(),
          ],
        ),
      ),
    );
  }
}
