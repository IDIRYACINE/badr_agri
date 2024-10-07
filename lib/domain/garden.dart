import 'package:badr_agri/domain/garden_section.dart';
import 'package:badr_agri/domain/location.dart';

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
        coordinates: GpsCoordinates(latitude: 0, longitude: 0),
        surface: Surface(amount: 23, type: SurfaceType.h),
        equipements: [],
        sections: []
        );
  }
}
