import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'map_location_viewmodel.dart';

class MapLocationView extends StackedView<MapLocationViewModel> {
  const MapLocationView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    MapLocationViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Container(
        padding: const EdgeInsets.only(left: 25.0, right: 25.0),
      ),
    );
  }

  @override
  MapLocationViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      MapLocationViewModel();
}
