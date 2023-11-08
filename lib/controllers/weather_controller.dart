import '../entities/weather_info.dart';

class WeatherController {
  WeatherInfo getWeatherInfo() {
    return const WeatherInfo(
      location: 'Tallinn',
      weatherCondition: WeatherCondition.sunny,
      temperature: 20,
      minTemperature: 15,
      maxTemperature: 25,
      rainChance: 10,
    );
  }
}