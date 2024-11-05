import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:meta/meta.dart';
import 'package:weather_app/models/weather_model.dart';
import 'package:weather_app/service/weather_service.dart';

part 'get_weather_state.dart';

class GetWeatherCubit extends Cubit<GetWeatherState> {
  GetWeatherCubit() : super(InitialState());

  getCurentWeather(final String cityName) async {
    try {
      WeatherModel weatherModel =
          await WeatherService(dio: Dio()).getWeather(cityName: cityName);
      emit(WeatherLoaded());
    } catch (e) {
      emit(WeatherFailuer());
    }
  }
}
