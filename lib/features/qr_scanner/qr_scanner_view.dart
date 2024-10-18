import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'qr_scanner_viewmodel.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

class QrScannerView extends StackedView<QrScannerViewModel> {
  QrScannerView({Key? key}) : super(key: key);

  final MobileScannerController controller = MobileScannerController();

  @override
  Widget builder(
    BuildContext context,
    QrScannerViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Container(
        padding: const EdgeInsets.only(left: 25.0, right: 25.0),
        child: MobileScanner(
          controller: controller,
          onDetect: viewModel.onDetect,
        ),
      ),
    );
  }

  @override
  QrScannerViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      QrScannerViewModel();
}
