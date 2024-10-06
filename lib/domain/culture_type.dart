class CultureType {
  final String name;
  final String id;

  CultureType({required this.name, required this.id});

  static List<CultureType> cultureTypes = [
    CultureType(name: "Grand Culture", id: "grand_culture"),
    CultureType(name: "Fruit Trees", id: "fruit_trees"),
    CultureType(name: "Marichaire Culture", id: "marichiare_culture")
  ];
}
