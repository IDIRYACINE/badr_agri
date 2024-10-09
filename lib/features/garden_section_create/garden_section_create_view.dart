import 'package:badr_agri/domain/planting_mode.dart';
import 'package:badr_agri/domain/tree_type.dart';
import 'package:badr_agri/features/tree_medical_history/tree_medical_history_view.dart';
import 'package:badr_agri/ui/widgets/common/appbar.dart';
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
      appBar: const AppbarDefault(),
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Container(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                label: "number of lines ", onUpdate: viewModel.setLinesCount),
            Expanded(
                child: TreeMedicalHistoryView(
              tree: viewModel.treeHistory,
            )),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                OutlinedButton(
                    onPressed: viewModel.cancel, child: const Text("Cancel")),
                OutlinedButton(
                    onPressed: viewModel.createSection,
                    child: const Text("Confirm"))
              ],
            )
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
