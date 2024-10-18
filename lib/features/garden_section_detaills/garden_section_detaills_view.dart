import 'package:badr_agri/domain/garden_section.dart';
import 'package:badr_agri/features/garden_section_detaills/widgets/tree_card.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'garden_section_detaills_viewmodel.dart';

class GardenSectionDetaillsView
    extends StackedView<GardenSectionDetaillsViewModel> {
  final SectionLine sectionLine;
  final int lineIndex;
  final int sectionIndex;
  const GardenSectionDetaillsView({
    Key? key,
    required this.sectionLine,
    required this.lineIndex,
    required this.sectionIndex,
  }) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    GardenSectionDetaillsViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Container(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          children: [
            Card(
              color: Theme.of(context).cardColor,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Text(
                  "Line : $lineIndex",
                  style: Theme.of(context).textTheme.displayMedium,
                ),
              ),
            ),
            Card(
              color: Theme.of(context).cardColor,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Text(
                  "Section : $sectionIndex",
                  style: Theme.of(context).textTheme.displayMedium,
                ),
              ),
            ),
            Text(
              "Trees",
              style: Theme.of(context).textTheme.displaySmall,
            ),
            Expanded(
              child: GridView.count(
                crossAxisCount: 5, // Number of columns
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 10.0,
                padding: const EdgeInsets.all(10.0),
                children: List.generate(sectionLine.trees.length, (index) {
                  return TreeCard(
                    tree: sectionLine.trees[index],
                    index: index,
                  );
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  GardenSectionDetaillsViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      GardenSectionDetaillsViewModel();
}
