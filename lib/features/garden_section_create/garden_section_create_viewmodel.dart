import 'package:badr_agri/app/app.locator.dart';
import 'package:badr_agri/domain/garden_section.dart';
import 'package:badr_agri/domain/planting_mode.dart';
import 'package:badr_agri/domain/tree_history.dart';
import 'package:badr_agri/domain/tree_type.dart';
import 'package:badr_agri/infrastructure/database_service.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class GardenSectionCreateViewModel extends BaseViewModel {
  PlantingMode? plantingMode;
  TreeType? treeType;
  TreeSubType? treeSubType;
  int? treesAge;
  int? treeCount;
  int? lines;

  Tree treeHistory = Tree(
    age: 0,
    id: '',
    histroy: [],
    type: TreeType.types[0],
    subType: TreeSubType.types[0],
  );

  void setPlantingMode(PlantingMode? value) {
    plantingMode = value;
  }

  void setTreeType(TreeType? value) {
    treeType = value;
  }

  void setTreeSubType(TreeSubType? value) {
    treeSubType = value;
  }

  setTreeCount(String? value) {
    treeCount = int.tryParse(value ?? "2") ?? 2;
  }

  setTreeAges(String? value) {
    treesAge = int.tryParse(value ?? "2") ?? 2;
  }

  setLinesCount(String? value) {
    lines = int.tryParse(value ?? "4") ?? 4;
  }

  void createSection() {
    final navigationService = locator<NavigationService>();
    final databaseService = locator<DatabaseService>();

    final targetTreeCount = treeCount ?? 4;

    final targetLinesCount = lines ?? 4;
    final List<SectionLine> sectionLines = [];
    for (int i = 0; i < targetLinesCount; i++) {
      List<Tree> treesLine = [];
      for (int j = 0; j < targetTreeCount; j++) {

        List<TreeHistory> history = [];

        for (int c = 0; c < treeHistory.histroy.length; c++) {
          history.add(
            treeHistory.histroy[c].copy(databaseService.uuid.v4())
          );
        }

        treesLine.add(Tree(
            id: databaseService.uuid.v4(),
            age: treesAge ?? 10,
            type: treeType!,
            histroy: history,
            subType: treeSubType!));
      }

      sectionLines
          .add(SectionLine(id: databaseService.uuid.v4(), trees: treesLine));
    }

    final section = GardenSection(
        lines: sectionLines,
        plantingMode: plantingMode!,
        treeType: treeType!,
        treeSubType: treeSubType!,
        id: databaseService.uuid.v4());

    navigationService.back(result: section);
  }

  void cancel() {
    final navigationService = locator<NavigationService>();
    navigationService.back(result: null);
  }
}
