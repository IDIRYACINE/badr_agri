import 'package:badr_agri/app/app.locator.dart';
import 'package:badr_agri/domain/tree_history.dart';
import 'package:badr_agri/infrastructure/database_service.dart';
import 'package:stacked/stacked.dart';

class TreeMedicalHistoryViewModel extends BaseViewModel {
  final List<TreeHistory> histroy;
  final String treeId;

  TreeMedicalHistoryViewModel({required this.treeId, required this.histroy});

  void takeHistoryNote(TreeHistoryOption option, bool checked) {
    final databaseService = locator<DatabaseService>();
    if (checked) {
      histroy.add(TreeHistory(id: databaseService.uuid.v4(), option: option));
    } else {
      final index = histroy.indexWhere((el) => el.option.id == option.id);
      histroy.removeAt(index);
    }

    rebuildUi();
  }
}
