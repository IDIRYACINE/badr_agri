import 'package:badr_agri/domain/planting_mode.dart';
import 'package:badr_agri/domain/tree_type.dart';
import 'package:badr_agri/ui/widgets/common/form_field/form_field.dart';
import 'package:badr_agri/ui/widgets/common/form_selector/form_selector.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'garden_section_create_viewmodel.dart';

class GardenSectionCreateView
    extends StackedView<GardenSectionCreateViewModel> {
  const GardenSectionCreateView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    GardenSectionCreateViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Container(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          children: [
            FormSelector(
                data: PlantingMode.modes,
                readLabel: (mode) => mode.name,
                onChanged: viewModel.setPlantingMode),
            FormSelector(
                data: TreeType.types,
                readLabel: (tree) => tree.name,
                onChanged: viewModel.setTreeType),
            FormSelector(
                data: TreeSubType.types,
                readLabel: (tree) => tree.name,
                onChanged: viewModel.setTreeSubType),
            AppFormField(
                label: "number of trees", onUpdate: viewModel.setTreeCount),
            AppFormField(label: "trees age ", onUpdate: viewModel.setTreeAges),
            AppFormField(
                label: "number of lines ", onUpdate: viewModel.setLinesCount)
          ],
        ),
      ),
    );
  }

  @override
  GardenSectionCreateViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      GardenSectionCreateViewModel();
}
