import 'package:flutter/material.dart';

class LoginOption extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        BuildButton(
          // ignore: prefer_const_constructors
          iconImage: Image(
            height: 20,
            width: 20,
            image: const AssetImage("images/facebook.png"),
          ),
          textButton: 'Facebook',
        ),
        BuildButton(
          // ignore: prefer_const_constructors
          iconImage: Image(
            height: 20,
            width: 20,
            image: const AssetImage("images/google.png"),
          ),
          textButton: 'google',
        )
      ],
    );
  }
}

class BuildButton extends StatelessWidget {
  final Image iconImage;
  final String textButton;
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
