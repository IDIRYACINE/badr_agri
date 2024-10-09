import 'package:badr_agri/domain/garden_section.dart';
import 'package:badr_agri/features/garden_section_lines/widgets/garden_section_line_card.dart';
import 'package:badr_agri/ui/widgets/common/appbar.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'garden_section_lines_viewmodel.dart';

class GardenSectionLinesView extends StackedView<GardenSectionLinesViewModel> {
  final GardenSection gardenSection;
  final int sectionIndex;
  const GardenSectionLinesView(
      {Key? key, required this.gardenSection, required this.sectionIndex})
      : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    GardenSectionLinesViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      appBar: const AppbarDefault(),
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Container(
        padding: const EdgeInsets.all(25.0),
        child: ListView.builder(
            itemCount: gardenSection.lines.length,
            itemBuilder: (ctx, index) => SectionLineCard(
                  sectionLine: gardenSection.lines[index],
                  lineIndex: index,
                  sectionIndex: sectionIndex,
                )),
      ),
    );
  }

  @override
  GardenSectionLinesViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      GardenSectionLinesViewModel();
}
