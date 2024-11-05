import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loading_indicator/loading_indicator.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_cubit.dart';
import 'package:weather_app/views/search_view.dart';
import 'package:weather_app/widgets/no_weather_body.dart';
import 'package:weather_app/widgets/weather_info_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Weather App'),
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) {
                  return const SearchView();
                },
              ));
            },
            icon: const Icon(Icons.search)),
      ),
      body: BlocBuilder<GetWeatherCubit, GetWeatherState>(
        builder: (context, state) {
          if (state is WeatherInitialState) {
            return const NoWeatherBody();
          } else if (state is WeatherLoadedState) {
            return const WeatherInfoBody();
          } else if (state is WeatherLoadingState) {
            return const LoadingIndicator(
              indicatorType: Indicator.ballClipRotateMultiple,
              colors: [
                Colors.blue,
                Colors.blueAccent,
                Colors.blueGrey,
                Colors.lightBlue,
              ],
            );
          } else {
            return const Text('Oops There Was An Erorr!');
          }
        },
      ),
    );
  }
}
