import 'package:badr_agri/domain/surface.dart';
import 'package:badr_agri/features/garden_equipements/garden_equipements.dart';
import 'package:badr_agri/ui/widgets/common/form_field/form_field.dart';
import 'package:badr_agri/ui/widgets/common/form_selector/form_selector.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'garden_create_viewmodel.dart';

class GardenCreateView extends StackedView<GardenCreateViewModel> {
  const GardenCreateView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    GardenCreateViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Container(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.max,
          children: [
            AppFormField(
              label: 'Name',
              onUpdate: viewModel.setGardenName,
            ),
            Row(
              children: [
                Expanded(
                    flex: 2,
                    child: AppFormField(
                        label: 'Surface', onUpdate: viewModel.setSurface)),
                const Expanded(child: SizedBox()),
                Expanded(
                  flex: 1,
                  child: FormSelector(
                      data: SurfaceType.values,
                      readLabel: (v) => v.name,
                      onChanged: viewModel.setSurfaceType),
                )
              ],
            ),
            SizedBox(
                height: 100,
                child: GardenEquipements(initialData: viewModel.equipements)),
            OutlinedButton(
                onPressed: viewModel.createGarden, child: const Text("Confirm"))
          ],
        ),
      ),
    );
  }

  @override
  GardenCreateViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      GardenCreateViewModel();
}
