// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'get_weather_cubit.dart';

@immutable
sealed class GetWeatherState {}

final class WeatherInitialState extends GetWeatherState {}

class WeatherLoadedState extends GetWeatherState {}

final class WeatherLoadingState extends GetWeatherState {}

final class WeatherFailuerState extends GetWeatherState {}
