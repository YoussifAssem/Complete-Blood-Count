import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class LogInForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return logInForm();
  }
}

// ignore: camel_case_types
class logInForm extends State<StatefulWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildInputForm('Email'),
        buildInputForm('password'),
      ],
    );
  }

  Padding buildInputForm(String label) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: TextFormField(
        decoration: InputDecoration(
            labelText: label,
            labelStyle: const TextStyle(
              color: Colors.blueGrey,
            )),
      ),
    );
  }
}
