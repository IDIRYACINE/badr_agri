import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'garden_screen_viewmodel.dart';

class GardenScreenView extends StackedView<GardenScreenViewModel> {
  const GardenScreenView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    GardenScreenViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Container(
        padding: const EdgeInsets.only(left: 25.0, right: 25.0),
      ),
    );
  }

  @override
  GardenScreenViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      GardenScreenViewModel();
}
