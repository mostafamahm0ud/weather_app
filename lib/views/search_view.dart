
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_cubit.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Search City',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Center(
          child: TextField(
            onSubmitted: (value) async {
              GetWeatherCubit getWeatherCubit = BlocProvider.of(context);
              getWeatherCubit.getCurentWeather(value);
              Navigator.pop(context);
            },
            decoration: const InputDecoration(
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 32,
                ),
                border: OutlineInputBorder(
                    borderSide: BorderSide(
                  color: Colors.blueAccent,
                )),
                labelText: 'Search',
                suffixIcon: Icon(Icons.search),
                hintText: 'Enter Your City Name'),
          ),
        ),
      ),
    );
  }
}
// WeatherModel? weatherModel;
