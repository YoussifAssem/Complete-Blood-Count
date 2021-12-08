import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  final String buttonText;
  // ignore: prefer_const_constructors_in_immutables, use_key_in_widget_constructors
  PrimaryButton({required this.buttonText});
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 60,
      width: 500,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16), color: Colors.pink[900]),
      child: Text(buttonText,
          style: const TextStyle(
            color: Colors.white,
          )),
    );
  }
}
