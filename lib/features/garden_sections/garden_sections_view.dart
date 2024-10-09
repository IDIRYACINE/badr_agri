import 'package:badr_agri/domain/garden.dart';
import 'package:badr_agri/features/garden_sections/widgets/garden_section_card.dart';
import 'package:badr_agri/ui/widgets/common/appbar.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'garden_sections_viewmodel.dart';

class GardenSectionsView extends StackedView<GardenSectionsViewModel> {
  final Garden garden;
  const GardenSectionsView({Key? key, required this.garden}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    GardenSectionsViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      appBar: const AppbarDefault(),
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Container(
        padding: const EdgeInsets.all(25.0),
        child: ListView.builder(
            itemCount: garden.sections.length,
            itemBuilder: (ctx, index) => GardenSectionCard(
                  gardenSection: garden.sections[index],
                  index: index,
                )),
      ),
      floatingActionButton: IconButton.filled(
          onPressed: viewModel.addGardenSection,
          icon: const Icon(Icons.add_circle)),
    );
  }

  @override
  GardenSectionsViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      GardenSectionsViewModel(sections: garden.sections, id: garden.id);
}
