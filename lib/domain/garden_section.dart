import 'package:badr_agri/domain/tree_type.dart';

class GardenSection {
  final String id;
  final List<SectionLine> lines;
  final TreeType treeType;
  final TreeSubType treeSubType;

  GardenSection(
      {required this.id,
      required this.lines,
      required this.treeType,
      required this.treeSubType});

  get totalTrees {
    int count = 0;

    for (SectionLine line in lines) {
      count += line.trees.length;
    }

    return count;
  }
}

class SectionLine {
  final List<Tree> trees;
  final String id;

  SectionLine({required this.trees, required this.id});
}
