import 'package:badr_agri/domain/garden_section.dart';
import 'package:badr_agri/domain/location.dart';
import 'package:badr_agri/domain/planting_mode.dart';

import 'equipements.dart';
import 'surface.dart';

class Garden {
  final String id;
  final String name;
  final GpsCoordinates coordinates;
  final Surface surface;
  final List<Equipement> equipements;
  final List<GardenSection> sections;

  Garden(
      {required this.name,
      required this.sections,
      required this.id,
      required this.coordinates,
      required this.surface,
      required this.equipements});

  copyWith(
      {String? name,
      GpsCoordinates? coordinates,
      Surface? surface,
      List<GardenSection>? sections,
      List<Equipement>? equipements,
      String? id}) {
    return Garden(
      id: id ?? this.id,
      name: name ?? this.name,
      coordinates: coordinates ?? this.coordinates,
      surface: surface ?? this.surface,
      equipements: equipements ?? this.equipements,
      sections: sections ?? this.sections,
    );
  }

  factory Garden.mock() {
    return Garden(
        id: "test",
        name: "name",
        coordinates: GpsCoordinates(latitude: 0, longitude: 0, id: 'id'),
        surface: Surface(amount: 23, type: SurfaceType.h, id: 'id'),
        equipements: [],
        sections: []);
  }

  double caluclateSurfaceFertilizer() {
    double result = 0;
    bool intensif = sections.first.plantingMode.id == PlantingMode.modes[0].id;
    double area = surface.normalize();

    if (intensif) {
      result = area * 12;
    } else {
      result = area * 5;
    }

    return result;
  }

  double caluclateTreeFertilizer() {
    double result = 0;

    for (GardenSection section in sections) {
      int sectionTreesCount =
          section.lines.length * section.lines[0].trees.length;
      bool intensif = section.plantingMode.id == PlantingMode.modes[0].id;

      if (intensif) {
        result = sectionTreesCount * 1.5;
      } else {
        result = sectionTreesCount * 1.25;
      }
    }

    return result;
  }
}
