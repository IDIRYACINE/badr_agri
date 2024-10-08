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
  List<TreeHistory> sharedTreeHistory = [];

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

    List<Tree> treesLine = List.filled(
        treeCount ?? 4,
        Tree(
            id: databaseService.uuid.v4(),
            age: treesAge ?? 10,
            type: treeType!,
            histroy: sharedTreeHistory,
            subType: treeSubType!));

    List<SectionLine> sectionLines =
        List.filled(lines ?? 4, SectionLine(id: databaseService.uuid.v4(), trees: treesLine));

    final section = GardenSection(
        lines: sectionLines,
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
