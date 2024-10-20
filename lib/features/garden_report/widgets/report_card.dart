import 'package:badr_agri/domain/garden.dart';
import 'package:flutter/material.dart';

class ReportCard extends StatelessWidget {
  final Garden garden;
  const ReportCard({super.key, required this.garden});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: const EdgeInsets.all(25),
        child: Column(
          children: [
            Text("Surface : ${garden.surface.normalize()} H"),
            Text("Surface Fertilizers: ${garden.caluclateSurfaceFertilizer()}} Q"),
            Text("Tree Fertilizers : ${garden.caluclateTreeFertilizer()} Kg")
          ],
        ),
      ),
    );
  }
}
