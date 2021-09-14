import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BackgroundImage extends StatelessWidget {

  final String weatherType;

  BackgroundImage(this.weatherType);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FadeInImage.assetNetwork(
        placeholder: "assets/images/background.jpg",
        image: "https://source.unsplash.com/720x1080/?"+weatherType,
        fadeInCurve: Curves.bounceIn,
        fit: BoxFit.cover,
      ),
    ],
    );
  }
}