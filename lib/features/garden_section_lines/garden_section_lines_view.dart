import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'garden_section_lines_viewmodel.dart';

class GardenSectionLinesView extends StackedView<GardenSectionLinesViewModel> {
  const GardenSectionLinesView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    GardenSectionLinesViewModel viewModel,
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
  GardenSectionLinesViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      GardenSectionLinesViewModel();
}
