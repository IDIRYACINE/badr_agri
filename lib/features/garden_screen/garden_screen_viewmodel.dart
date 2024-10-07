import 'package:badr_agri/app/app.locator.dart';
import 'package:badr_agri/app/app.router.dart';
import 'package:badr_agri/domain/garden.dart';
import 'package:badr_agri/infrastructure/database_service.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class GardenScreenViewModel extends BaseViewModel {
  List<Garden> gardens = [];

  void loadData() async {
    final databaseService = locator<DatabaseService>();
    databaseService.init();
    final gardenLoaded = await databaseService.repository
        .loadGardens(databaseService.userId ?? "");
  }

  void addGarden() async {
    final nav = locator<NavigationService>();
    final garden = await nav.navigateToGardenCreateView();

    if (garden != null) {
      gardens.add(garden);
      rebuildUi();
    }
  }
}
