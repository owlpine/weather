class WeatherInfo {
  const WeatherInfo({
    required this.location,
    required this.weatherCondition,
    required this.temperature,
    required this.minTemperature,
    required this.maxTemperature,
    required this.rainChance,
  });

  final String location;
  final WeatherCondition weatherCondition;
  final int temperature;
  final int minTemperature;
  final int maxTemperature;
  final int rainChance;
}

enum WeatherCondition {
  sunny('Sunny'),
  cloudy('Cloudy'),
  rainy('Rainy'),
  snowy('Snowy'),
  foggy('Foggy'),
  windy('Windy'),
  stormy('Stormy');

  const WeatherCondition(this.name);
  final String name;

  @override
  String toString() => name;
}
