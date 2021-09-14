import 'dart:math';

import 'package:flutter/material.dart';
import 'package:myapp/app.dart';
import 'package:myapp/home/weather_screen.dart';
import 'package:myapp/home/widgets/background_image.dart';

class WeatherApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Weather app"),),
        backgroundColor: Colors.white,
        body:
            WeatherScreen(),
      ),
    );
  }


}