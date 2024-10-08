import 'package:badr_agri/app/app.locator.dart';
import 'package:badr_agri/domain/culture_type.dart';
import 'package:badr_agri/domain/equipements.dart';
import 'package:badr_agri/domain/garden.dart';
import 'package:badr_agri/domain/location.dart';
import 'package:badr_agri/domain/surface.dart';
import 'package:badr_agri/infrastructure/database_service.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class GardenCreateViewModel extends BaseViewModel {
  CultureType? cultureType;
  bool hasHistory = false;
  String? name;
  double? surface;
  SurfaceType? type;

  final List<Equipement> equipements = [];

  String readCultureTypeLabel(CultureType ct) {
    return ct.name;
  }

  void selectCultureType(CultureType? ct) {
    cultureType = ct;
  }

  void toggleHistory(bool value) {
    hasHistory = value;
    rebuildUi();
  }

  setGardenName(String? value) {
    name = value;
  }

  setSurface(String? value) {
    surface = double.tryParse(value ?? "0") ?? 0;
  }

  void setSurfaceType(SurfaceType? value) {
    type = value;
  }

  void createGarden() {
    final navigationService = locator<NavigationService>();
    final databaseService = locator<DatabaseService>();

    final garden = Garden(
        name: name ?? "named",
        id: databaseService.uuid.v4(),
        coordinates: GpsCoordinates(latitude: 0, longitude: 0, id: databaseService.uuid.v4()),
        surface: Surface(
            id: databaseService.uuid.v4(),
            amount: surface ?? 20,
            type: type ?? SurfaceType.km),
        equipements: equipements,
        sections: []);

    navigationService.back(result: garden);
  }
}
