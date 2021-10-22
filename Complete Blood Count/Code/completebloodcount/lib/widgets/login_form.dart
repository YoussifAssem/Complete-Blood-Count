import 'package:flutter/material.dart';

class LogInForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return logInForm();
  }
}

class logInForm extends State<StatefulWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildInputForm('username'),
        buildInputForm('password'),
      ],
    );
  }

  Padding buildInputForm(String label) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 5),
      child: TextFormField(
        decoration: InputDecoration(
            labelText: label,
            labelStyle: TextStyle(
              color: Colors.blueGrey,
            )),
      ),
    );
  }
}
