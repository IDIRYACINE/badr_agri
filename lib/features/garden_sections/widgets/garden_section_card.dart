import 'package:badr_agri/app/app.locator.dart';
import 'package:badr_agri/app/app.router.dart';
import 'package:badr_agri/domain/garden_section.dart';
import 'package:flutter/material.dart';
import 'package:stacked_services/stacked_services.dart';

class GardenSectionCard extends StatelessWidget {
  final GardenSection gardenSection;
  final int index;
  const GardenSectionCard(
      {super.key, required this.gardenSection, required this.index});

  void goToDetaills() {
    final nav = locator<NavigationService>();
    nav.navigateToGardenSectionLinesView(
        gardenSection: gardenSection, sectionIndex: index);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: goToDetaills,
      child: Card(
        child: SafeArea(
          minimum: const EdgeInsets.all(10.0),
          child: Text("Section $index"),
        ),
      ),
    );
  }
}
