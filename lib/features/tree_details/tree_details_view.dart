import 'package:badr_agri/domain/tree_type.dart';
import 'package:badr_agri/features/tree_medical_history/tree_medical_history_view.dart';
import 'package:badr_agri/ui/widgets/common/appbar.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'tree_details_viewmodel.dart';

class TreeDetailsView extends StackedView<TreeDetailsViewModel> {
  final Tree tree;
  const TreeDetailsView({Key? key, required this.tree}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    TreeDetailsViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      appBar: const AppbarDefault(),
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Container(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          children: [
            Card(
              child: Text(
                "${tree.number}",
                style: Theme.of(context).textTheme.displayMedium,
              ),
            ),
            Expanded(
              child: TreeMedicalHistoryView(
                tree: tree,
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  TreeDetailsViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      TreeDetailsViewModel();
}
