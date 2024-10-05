import 'package:badr_agri/features/garden_screen/widgets/garden_card.dart';
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
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Container(
        padding: const EdgeInsets.only(left: 25.0, right: 25.0),
        child: ListView.builder(
          itemCount: viewModel.gardens.length,
          itemBuilder: (context, index) =>
              GardenCard(garden: viewModel.gardens[index]),
        ),
      ),
      floatingActionButton: IconButton(
          onPressed: viewModel.addGarden, icon: const Icon(Icons.add_circle)),
    );
  }

  @override
  GardenScreenViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      GardenScreenViewModel();
}
