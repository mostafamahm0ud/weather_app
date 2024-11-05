part of 'get_weather_cubit.dart';

@immutable
sealed class GetWeatherState {}

final class InitialState extends GetWeatherState {}

final class WeatherLoaded extends GetWeatherState {}

final class WeatherFailuer extends GetWeatherState {}
