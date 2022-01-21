import 'package:flutter/material.dart';

class BannerModel {
  String text;
  List<Color> cardBackground;
  String image;

  BannerModel(this.text, this.cardBackground, this.image);
}

List<BannerModel> bannerCards = [
  new BannerModel(
      "best doctors ever",
      [
        Color(0xffa1d4ed),
        Color(0xffc0eaff),
      ],
      "images/414-bg.png"),
  new BannerModel(
      "we take care of you",
      [
        Color(0xffb6d4fa),
        Color(0xffcfe3fc),
      ],
      "images/covid-bg.png"),
];
