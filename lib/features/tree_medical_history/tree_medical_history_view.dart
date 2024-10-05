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
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Container(
        padding: const EdgeInsets.only(left: 25.0, right: 25.0),
      ),
    );
  }

  @override
  TreeMedicalHistoryViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      TreeMedicalHistoryViewModel();
}
