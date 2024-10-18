import 'package:badr_agri/app/app.locator.dart';
import 'package:badr_agri/app/app.router.dart';
import 'package:badr_agri/domain/garden_section.dart';
import 'package:badr_agri/domain/tree_history.dart';
import 'package:badr_agri/domain/tree_type.dart';
import 'package:badr_agri/infrastructure/database/database.dart' as db_domain;
import 'package:badr_agri/infrastructure/database_service.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class GardenSectionsViewModel extends BaseViewModel {
  final List<GardenSection> sections;
  final String id;
  GardenSectionsViewModel({
    required this.id,
    required this.sections,
  });

  void addGardenSection() async {
    final navigationService = locator<NavigationService>();

    final gardenSection =
        await navigationService.navigateToGardenSectionCreateView();

    if (gardenSection is GardenSection) {
      final databaseService = locator<DatabaseService>();
      final db = databaseService.database;

      for (SectionLine line in gardenSection.lines) {
        await db.into(db.sectionLines).insert(
            db_domain.SectionLinesCompanion.insert(
                id: line.id, gardenSectionId: gardenSection.id));

        for (Tree tree in line.trees) {
          await db.into(db.trees).insert(db_domain.TreesCompanion.insert(
                number: tree.number,
                id: tree.id,
                age: tree.age,
                type: tree.type.id,
                sectionLineId: line.id,
                subType: tree.subType.id,
              ));

          for (TreeHistory history in tree.histroy) {
            await db.into(db.treeHistories).insert(
                db_domain.TreeHistoriesCompanion.insert(
                    id: history.id,
                    treeId: tree.id,
                    treeHistoryOptionId: history.option.id));
          }
        }
      }

      await db.into(db.gardenSections).insert(
          db_domain.GardenSectionsCompanion.insert(
              plantModeId: gardenSection.plantingMode.id,
              id: gardenSection.id,
              treeType: gardenSection.treeType.id,
              treeSubType: gardenSection.treeSubType.id,
              gardenId: id));

      sections.add(gardenSection);
      rebuildUi();
    }
  }
}
