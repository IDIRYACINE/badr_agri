import 'package:badr_agri/domain/tree_history.dart';
import 'package:badr_agri/domain/tree_type.dart';
import 'package:badr_agri/ui/widgets/common/form_checkbox/form_checkbox.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'tree_medical_history_viewmodel.dart';

class TreeMedicalHistoryView extends StackedView<TreeMedicalHistoryViewModel> {
  final Tree tree;
  const TreeMedicalHistoryView({required this.tree, Key? key})
      : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    TreeMedicalHistoryViewModel viewModel,
    Widget? child,
  ) {
    return ListView.builder(
        itemCount: TreeHistoryOption.possibleHistory.length,
        itemBuilder: (ctx, index) => AppFormCheckbox(
            data: TreeHistoryOption.possibleHistory[index],
            readLabel: (v) => v.name,
            onChecked: viewModel.takeHistoryNote));
  }

  @override
  TreeMedicalHistoryViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      TreeMedicalHistoryViewModel(histroy: tree.histroy, treeId: tree.id);
}
