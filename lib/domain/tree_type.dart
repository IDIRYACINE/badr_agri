import 'package:badr_agri/domain/tree_history.dart';

class Tree {
  final String id;
  final int age;
  final TreeType type;
  final TreeSubType subType;
  final List<TreeHistory> histroy;

  Tree(
      {required this.id,
      required this.histroy,
      required this.age,
      required this.type,
      required this.subType});
}

class TreeType {
  final String id;
  final String name;

  static List<TreeType> types = [TreeType(id: "id", name: "name")];

  TreeType({required this.id, required this.name});
}

class TreeSubType {
  final String id;
  final String name;

  static List<TreeSubType> types = [TreeSubType(id: "id", name: "name")];

  TreeSubType({required this.id, required this.name});
}
