import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'garden_report_viewmodel.dart';

class GardenReportView extends StackedView<GardenReportViewModel> {
  const GardenReportView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    GardenReportViewModel viewModel,
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
  GardenReportViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      GardenReportViewModel();
}
