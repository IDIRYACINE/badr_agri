import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'weather_forecast_model.dart';

class WeatherForecast extends StackedView<WeatherForecastModel> {
  const WeatherForecast({super.key});

  @override
  Widget builder(
    BuildContext context,
    WeatherForecastModel viewModel,
    Widget? child,
  ) {
    return const SizedBox.shrink();
  }

  @override
  WeatherForecastModel viewModelBuilder(
    BuildContext context,
  ) =>
      WeatherForecastModel();
}
