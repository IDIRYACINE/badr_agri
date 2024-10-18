import 'package:badr_agri/app/app.locator.dart';
import 'package:badr_agri/domain/tree_history.dart';
import 'package:badr_agri/infrastructure/database/database.dart'
    as database_service;
import 'package:badr_agri/infrastructure/database_service.dart';
import 'package:drift/drift.dart';
import 'package:stacked/stacked.dart';

class TreeMedicalHistoryViewModel extends BaseViewModel {
  final List<TreeHistory> histroy;
  final String treeId;

  TreeMedicalHistoryViewModel({required this.treeId, required this.histroy});

  void takeHistoryNote(TreeHistoryOption option, bool checked) async {
    final databaseService = locator<DatabaseService>();

    if (checked) {
      final hist = TreeHistory(id: databaseService.uuid.v4(), option: option);

      histroy.add(hist);
      final db = databaseService.database;
      await db.into(db.treeHistories).insert(
          database_service.TreeHistoriesCompanion.insert(
              id: hist.id,
              treeId: treeId,
              treeHistoryOptionId: hist.option.id));
    } else {
      final index = histroy.indexWhere((el) => el.option.id == option.id);
      final hist = histroy[index];
      histroy.removeAt(index);
      final db = databaseService.database;
      await db.transaction(() async {
        await (db.delete(db.treeHistories)
              ..where((t) =>
                  t.treeId.equals(treeId) &
                  t.treeHistoryOptionId.equals(hist.option.id)))
            .go();
      });
    }

    rebuildUi();
  }
}
