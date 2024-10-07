import 'package:badr_agri/domain/tree_history.dart';
import 'package:stacked/stacked.dart';

class TreeMedicalHistoryViewModel extends BaseViewModel {
  final List<TreeHistory> histroy;

  TreeMedicalHistoryViewModel({required this.histroy});

  void takeHistoryNote(TreeHistory treeHistory, bool checked) {
    if (checked) {
      histroy.add(treeHistory);
    } else {
      histroy.remove(treeHistory);
    }

    rebuildUi();
  }
}
