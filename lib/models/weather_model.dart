class WeatherModel {
  final String cityName;
  final String date;
  final String? image;
  final double temp;
  final double maxTemp;
  final double minTemp;
  final String weatherCondetion;

  WeatherModel(
      {required this.cityName,
      required this.date,
      this.image,
      required this.temp,
      required this.maxTemp,
      required this.minTemp,
      required this.weatherCondetion});

  factory WeatherModel.fromJson(json) {
    dynamic day = json['forecast']['forecastday'][0]['day'];
    return WeatherModel(
        cityName: json['location']['name'],
        date: json['current']['last_updated'],
        temp: day['avgtemp_c'],
        maxTemp: day['maxtemp_c'],
        minTemp: day['mintemp_c'],
        weatherCondetion: day['condition']['text'],
        image: day['condition']['icon']);
  }
}
