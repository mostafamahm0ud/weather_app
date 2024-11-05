
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:weather_app/models/weather_model.dart';
import 'package:weather_app/service/weather_service.dart';

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
              // weatherModel =
              //     await WeatherService(dio: Dio()).getWeather(cityName: value);
              // log(weatherModel!.cityName);
              
              // Navigator.pop(context);
            },
            decoration: const InputDecoration(
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 32,
                ),
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.blueAccent,
                  )
                ),
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
