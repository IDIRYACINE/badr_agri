import 'package:badr_agri/app/app.locator.dart';
import 'package:badr_agri/app/app.router.dart';
import 'package:badr_agri/domain/garden.dart';
import 'package:flutter/material.dart';
import 'package:stacked_services/stacked_services.dart';

class GardenCard extends StatelessWidget {
  final Garden garden;
  const GardenCard({super.key, required this.garden});

  void goToDetaills() {
    final nav = locator<NavigationService>();
    nav.navigateToGardenSectionsView(garden: garden);
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: goToDetaills,
      child: Card(
        child: SafeArea(
          minimum: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(garden.name),
                  Text("${garden.surface.amount} ${garden.surface.type.name}")
                ],
              ),
              const SizedBox(height: 10,),
              Text("Equipements : ${garden.equipements.length}")
            ],
          ),
        ),
      ),
    );
  }
}
