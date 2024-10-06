import 'package:badr_agri/domain/tree_type.dart';
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
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Container(
        padding: const EdgeInsets.only(left: 25.0, right: 25.0),
      ),
    );
  }

  @override
  TreeDetailsViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      TreeDetailsViewModel();
}
