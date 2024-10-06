import 'package:badr_agri/domain/equipements.dart';
import 'package:badr_agri/features/garden_equipements/equipement_card.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'garden_equipements_model.dart';

class GardenEquipements extends StackedView<GardenEquipementsModel> {
  final List<Equipement> initialData;
  const GardenEquipements({super.key, required this.initialData});

  @override
  Widget builder(
    BuildContext context,
    GardenEquipementsModel viewModel,
    Widget? child,
  ) {
    return Column(
      children: [
        IconButton(
            onPressed: viewModel.addEquipement,
            icon: const Icon(Icons.add_circle_outline)),
        Expanded(
          child: ListView.builder(
            itemCount: viewModel.data.length,
            itemBuilder: (ctx, index) =>
                EquipementCard(equipement: viewModel.data[index]),
          ),
        )
      ],
    );
  }

  @override
  GardenEquipementsModel viewModelBuilder(
    BuildContext context,
  ) =>
      GardenEquipementsModel(data: initialData);
}
