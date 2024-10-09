import 'package:badr_agri/app/app.locator.dart';
import 'package:badr_agri/app/app.router.dart';
import 'package:badr_agri/domain/garden.dart';
import 'package:badr_agri/infrastructure/database/database.dart' as db_domain;
import 'package:badr_agri/infrastructure/database_service.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class GardenScreenViewModel extends BaseViewModel {
  List<Garden> gardens = [];

  void loadData() async {
    final databaseService = locator<DatabaseService>();
    databaseService.init();
    gardens = await databaseService.repository
        .loadGardens(databaseService.userId ?? "");
    rebuildUi();
  }

  void addGarden() async {
    final nav = locator<NavigationService>();
    final garden = await nav.navigateToGardenCreateView();

    if (garden is Garden) {
      final databaseService = locator<DatabaseService>();
      final db = databaseService.database;

      await db
          .into(db.gpsCoordinates)
          .insert(db_domain.GpsCoordinatesCompanion.insert(
            id: garden.coordinates.id,
            latitude: garden.coordinates.latitude,
            longitude: garden.coordinates.longitude,
          ));

      await db.into(db.surfaces).insert(db_domain.SurfacesCompanion.insert(
            id: garden.surface.id,
            amount: garden.surface.amount,
            type: garden.surface.type.name,
          ));

      await db.into(db.gardens).insert(db_domain.GardensCompanion.insert(
          id: garden.id,
          name: garden.name,
          coordinatesId: garden.coordinates.id,
          surfaceId: garden.surface.id,
          userId: databaseService.userId!));

      for (int i = 0; i < garden.equipements.length; i++) {
        final equipement = garden.equipements[i];

        await db
            .into(db.equipements)
            .insert(db_domain.EquipementsCompanion.insert(
              id: equipement.id,
              name: equipement.name,
              quantity: equipement.quantity,
              gardenId: garden.id,
            ));
      }

      gardens.add(garden);
      rebuildUi();
    }
  }
}
