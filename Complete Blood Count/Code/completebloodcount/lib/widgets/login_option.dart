import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class LoginOption extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        // ignore: deprecated_member_use
        FlatButton(
          // ignore: prefer_const_constructors
          onPressed: () {},
          child: Padding(
            padding: const EdgeInsets.only(right: 80, top: 1),
            // ignore: deprecated_member_use
            child: Image.asset(
              'images/facebook.png',
              width: 40,
              height: 50,
            ),
          ),
        ),

        // ignore: deprecated_member_use
        FlatButton(
          // ignore: prefer_const_constructors
          onPressed: () {},
          // ignore: deprecated_member_use
          child: Image.asset(
            'images/Google.png',
            width: 40,
            height: 50,
          ),
        ),
      ],
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
