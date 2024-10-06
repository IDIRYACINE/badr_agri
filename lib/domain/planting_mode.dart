class PlantingMode {
  final String id;
  final String name;

  PlantingMode({required this.id, required this.name});

  static List<PlantingMode> modes = [
    PlantingMode(id: "crowded", name: "Crowded"),
    PlantingMode(id: "spaced", name: "spaced"),
  ];
}
