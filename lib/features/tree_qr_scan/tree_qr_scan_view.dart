import 'package:badr_agri/ui/widgets/common/appbar.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'tree_qr_scan_viewmodel.dart';

class TreeQrScanView extends StackedView<TreeQrScanViewModel> {
  const TreeQrScanView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    TreeQrScanViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      appBar: const AppbarDefault(),
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Container(
        padding: const EdgeInsets.only(left: 25.0, right: 25.0),
      ),
    );
  }

  @override
  TreeQrScanViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      TreeQrScanViewModel();
}
