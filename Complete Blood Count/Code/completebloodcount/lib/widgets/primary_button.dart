import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  final String buttonText;
  PrimaryButton({required this.buttonText});
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 60,
      width: 500,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16), color: Colors.blue),
      child: Text(buttonText,
          style: TextStyle(
            color: Colors.white,
          )),
    );
  }
}
