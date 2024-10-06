import 'package:badr_agri/app/app.locator.dart';
import 'package:badr_agri/app/app.router.dart';
import 'package:badr_agri/domain/garden_section.dart';
import 'package:flutter/material.dart';
import 'package:stacked_services/stacked_services.dart';

class SectionLineCard extends StatelessWidget {
  final SectionLine sectionLine;
  const SectionLineCard({super.key, required this.sectionLine});

  void goToDetaills() {
    final nav = locator<NavigationService>();
    nav.navigateToGardenSectionDetaillsView(sectionLine: sectionLine);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: goToDetaills,
      child: Card(
        child: SafeArea(
          minimum: const EdgeInsets.all(10.0),
          child: Text(sectionLine.id),
        ),
      ),
    );
  }
}
