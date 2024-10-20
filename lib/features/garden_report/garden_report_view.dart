import 'package:badr_agri/domain/garden.dart';
import 'package:badr_agri/features/garden_equipements/equipement_card.dart';
import 'package:badr_agri/features/garden_report/widgets/report_card.dart';
import 'package:badr_agri/ui/widgets/common/appbar.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'garden_report_viewmodel.dart';

class GardenReportView extends StackedView<GardenReportViewModel> {
  final Garden garden;
  const GardenReportView({
    Key? key,
    required this.garden,
  }) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    GardenReportViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      appBar: const AppbarDefault(),
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Container(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          children: [
            ReportCard(garden: garden),
            Expanded(
              child: ListView.builder(
                itemCount: garden.equipements.length,
                itemBuilder: (ctx, idx) => EquipementCard(
                    equipement: garden.equipements[idx],
                    onDismissed: viewModel.onDismissed),
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  GardenReportViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      GardenReportViewModel();
}
