
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp/home/widgets/background_image.dart';

class WeatherScreen extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    return WeatherScreenState();
  }
}

class WeatherScreenState extends State<WeatherScreen> {
  final _weatherTypes = ["rainy", "sunny"];
  var _weatherIndex = 0;

  void getCountries() async{
    var response = Dio().get("https://restcountries.eu/rest/v2/all");
    print(response);
  }



  @override
  Widget build(BuildContext context) {
    getCountries();
    return SingleChildScrollView(
      child: Column(
        children: [
          BackgroundImage(_weatherTypes[_weatherIndex]),
          OutlinedButton(onPressed: _onButtonClick, child: const Text("More Details"),),
          OutlinedButton(onPressed: _onButtonClick, child: const Text("More Details"),),
          OutlinedButton(onPressed: _onButtonClick, child: const Text("More Details"),),
        ],
      ),
    );
  }


  void _onButtonClick(){
    print("pressed button");
    setState(() {
      _weatherIndex++;
      if(_weatherIndex >= _weatherTypes.length){
        _weatherIndex = 0;
      }
    });
  }

}