import 'package:flutter/material.dart';
import '../entities/weather_info.dart';

class WeatherWidget extends StatelessWidget {
  const WeatherWidget({super.key, required this.weatherInfo});
  final WeatherInfo weatherInfo;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Padding(
        padding: const EdgeInsets.only(top: 80, bottom: 40),
        child: Column(children: [
          Text(
            weatherInfo.location,
            style: const TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          Text(
            weatherInfo.weatherCondition.name,
            style: const TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          Text(
            '${weatherInfo.temperature}°C',
            style: const TextStyle(
              fontSize: 80,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ]),
      ),
      Text(
        'Rain chance: ${weatherInfo.rainChance}%',
        style: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
      Text(
        'Min: ${weatherInfo.minTemperature}°C, Max: ${weatherInfo.maxTemperature}°C',
        style: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    ]);
  }
}
