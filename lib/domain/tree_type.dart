class Tree {
  final String id;
  final int age;
  final TreeType type;
  final TreeSubType subType;

  Tree(
      {required this.id,
      required this.age,
      required this.type,
      required this.subType});
}

class TreeType {
  final String id;
  final String name;

  static List<TreeType> types = [];

  TreeType({required this.id, required this.name});
}

class TreeSubType {
  final String id;
  final String name;

  static List<TreeSubType> types = [];

  TreeSubType({required this.id, required this.name});
}
