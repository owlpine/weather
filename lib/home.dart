import 'package:flutter/material.dart';
import 'widgets/weather_widgets.dart';
import 'controllers/weather_controller.dart';

class Home extends StatelessWidget {
  Home({super.key, required this.title});
  final String title;
  WeatherController weatherController = WeatherController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('Weather'),
      // ),
      body: Container(
        color: Colors.blue,
        child: Center(child: WeatherWidget(weatherInfo: WeatherController().getWeatherInfo())),
      ),
      // Center(
      //   child: WeatherWidget(),
      // ),
    );
  }
}