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
  TreeType({required this.id, required this.name});

  static List<TreeType> types = [
    TreeType(id: "ABRICOTS", name: "ABRICOTS"),
    TreeType(id: "POMMIER", name: "POMMIER"),
    TreeType(id: "vigne", name: "vigne"),
    TreeType(id: "FIGUIERS", name: "FIGUIERS"),
    TreeType(id: "AMANDES", name: "AMANDES"),
    TreeType(id: "GRENADES", name: "GRENADES"),
    TreeType(id: "PECHER", name: "PECHER"),
    TreeType(id: "POIRIER", name: "POIRIER"),
    TreeType(id: "PRUNIER", name: "PRUNIER"),
  ];

}

class TreeSubType {
  final String id;
  final String name;

  static List<TreeSubType> types = [
    TreeSubType(id: "bulida", name: "Bulida"),
    TreeSubType(id: "luizet", name: "Luizet"),
    TreeSubType(id: "arbi", name: "Arbi"),
    TreeSubType(id: "boufarik", name: "Boufarik"),
    TreeSubType(id: "badai", name: "Badai"),
    TreeSubType(id: "pechedenancy", name: "Pêche de Nancy"),
    TreeSubType(id: "canino", name: "Canino"),
    TreeSubType(id: "polonais", name: "Polonais"),
    TreeSubType(id: "bergeron", name: "Bergeron"),
    TreeSubType(id: "rougederoussillon", name: "Rouge de Roussillon"),
  ];

  TreeSubType({required this.id, required this.name});
}
