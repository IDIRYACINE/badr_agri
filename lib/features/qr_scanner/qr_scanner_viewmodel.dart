import 'package:badr_agri/app/app.locator.dart';
import 'package:badr_agri/app/app.router.dart';
import 'package:badr_agri/domain/tree_type.dart';
import 'package:badr_agri/infrastructure/database_service.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class QrScannerViewModel extends BaseViewModel {
  void onDetect(BarcodeCapture capture) async {
    final List<Barcode> barcodes = capture.barcodes;

    final barcode = barcodes.firstOrNull;
    final dbService = locator<DatabaseService>();
    final nav = locator<NavigationService>();

    if (barcode is Barcode) {
      final tree = await dbService.repository.loadTree(barcode.rawValue!);
      if (tree is Tree) {
        nav.navigateToTreeDetailsView(tree: tree);
      }
    }
  }
}
