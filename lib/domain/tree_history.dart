class TreeHistoryOption {
  final String id;
  final String name;

  TreeHistoryOption({required this.id, required this.name});

  static List<TreeHistoryOption> possibleHistory = [
    TreeHistoryOption(id: "cultural_practices", name: "Cultural Practices"),
    TreeHistoryOption(id: "fertalisers", name: "Fertalisation"),
    TreeHistoryOption(id: "phito_sanitaire", name: "Sanitizer Phito"),
    TreeHistoryOption(id: "sickness", name: "Sicknesses"),
    TreeHistoryOption(id: "ligration", name: "Ligration"),
    TreeHistoryOption(id: "production", name: "Production")
  ];
}

class TreeHistory {
  final String id;
  final TreeHistoryOption option;
  TreeHistory({required this.id, required this.option});

  TreeHistory copy(String newId) {
    return TreeHistory(id: newId, option: option);
  }
}
