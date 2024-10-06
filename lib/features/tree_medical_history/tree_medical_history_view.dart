import 'package:badr_agri/domain/tree_history.dart';
import 'package:badr_agri/ui/widgets/common/form_checkbox/form_checkbox.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'tree_medical_history_viewmodel.dart';

class TreeMedicalHistoryView extends StackedView<TreeMedicalHistoryViewModel> {
  const TreeMedicalHistoryView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    TreeMedicalHistoryViewModel viewModel,
    Widget? child,
  ) {
    return ListView.builder(
        itemCount: TreeHistory.possibleHistory.length,
        itemBuilder: (ctx, index) => AppFormCheckbox(
            data: TreeHistory.possibleHistory[index],
            readLabel: (v) => v.name,
            onChecked: viewModel.takeHistoryNote));
  }

  @override
  TreeMedicalHistoryViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      TreeMedicalHistoryViewModel();
}
