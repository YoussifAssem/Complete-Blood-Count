import 'package:flutter/material.dart';
import 'package:completebloodcount/widgets/login_form.dart';
import 'package:completebloodcount/widgets/primary_button.dart';

class logInScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 120,
            ),
            const Text(
              'WELCOME',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 33.0,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 5,
            ),
            Row(children: [
              Text(
                'new to this app?',
                style: TextStyle(color: Colors.black, fontSize: 14.0),
              ),
              SizedBox(
                width: 5,
              ),
              RaisedButton(onPressed: () => {}, child: Text('sign up')),
            ]),
            SizedBox(
              height: 10,
            ),
            LogInForm(),
            SizedBox(
              height: 20,
            ),
            Text('forget password',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 14.0,
                  decoration: TextDecoration.underline,
                  decorationThickness: 1,
                )),
            SizedBox(
              height: 20,
            ),
            PrimaryButton(
              buttonText: 'Log In',
            ),
          ],
        ),
      ),
    );
  }
}
