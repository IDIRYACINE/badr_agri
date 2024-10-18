import 'package:badr_agri/domain/tree_type.dart';
import 'package:badr_agri/features/tree_medical_history/tree_medical_history_view.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:qr_flutter/qr_flutter.dart';
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
      appBar: AppBar(),
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
            Card(
              child: QrImageView(
                data: tree.id,
                version: QrVersions.auto,
                size: 200.0,
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
