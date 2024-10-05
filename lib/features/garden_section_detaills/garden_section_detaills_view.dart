import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'garden_section_detaills_viewmodel.dart';

class GardenSectionDetaillsView
    extends StackedView<GardenSectionDetaillsViewModel> {
  const GardenSectionDetaillsView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    GardenSectionDetaillsViewModel viewModel,
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
  GardenSectionDetaillsViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      GardenSectionDetaillsViewModel();
}
