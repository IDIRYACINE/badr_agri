class TreeHistory {
  final String id;
  final String name;

  TreeHistory({required this.id, required this.name});

  static List<TreeHistory> possibleHistory = [
    TreeHistory(id: "cultural_practices", name: "Cultural Practices"),
    TreeHistory(id: "fertalisers", name: "Fertalisation"),
    TreeHistory(id: "phito_sanitaire", name: "Sanitizer Phito"),
    TreeHistory(id: "sickness", name: "Sicknesses"),
    TreeHistory(id: "ligration", name: "Ligration"),
    TreeHistory(id: "production", name: "Production")
  ];
}
