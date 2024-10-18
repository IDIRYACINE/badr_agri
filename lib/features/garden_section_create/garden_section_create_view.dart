import 'package:badr_agri/domain/planting_mode.dart';
import 'package:badr_agri/domain/tree_type.dart';
import 'package:badr_agri/features/tree_medical_history/tree_medical_history_view.dart';
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
      appBar: AppBar(),
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Container(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.max,
          children: [
            FormSelector(
              data: PlantingMode.modes,
              readLabel: (mode) => mode.name,
              onChanged: viewModel.setPlantingMode,
              label: 'Planting mode',
            ),
            const SizedBox(
              height: 10,
            ),
            FormSelector(
              data: TreeType.types,
              readLabel: (tree) => tree.name,
              onChanged: viewModel.setTreeType,
              label: 'Tree type',
            ),
            const SizedBox(
              height: 10,
            ),
            FormSelector(
              data: TreeSubType.types,
              readLabel: (tree) => tree.name,
              onChanged: viewModel.setTreeSubType,
              label: 'Tree subtype',
            ),
            const SizedBox(
              height: 10,
            ),
            AppFormField(
                label: "number of trees", onUpdate: viewModel.setTreeCount),
            const SizedBox(
              height: 10,
            ),
            AppFormField(label: "trees age ", onUpdate: viewModel.setTreeAges),
            const SizedBox(
              height: 10,
            ),
            AppFormField(
                label: "number of lines ", onUpdate: viewModel.setLinesCount),
            const SizedBox(
              height: 10,
            ),
            Text("Trees medical history",
                style: Theme.of(context).textTheme.bodyLarge),
            Expanded(
                child: TreeMedicalHistoryView(
              tree: viewModel.treeHistory,
            )),
            const SizedBox(
              height: 10,
            ),
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
