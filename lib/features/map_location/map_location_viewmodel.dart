import 'package:badr_agri/app/app.locator.dart';
import 'package:badr_agri/infrastructure/database_service.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:badr_agri/domain/location.dart';

class MapLocationViewModel extends BaseViewModel {
  MapController mapController = MapController();

  void confirmLocation() {
    final dbService = locator<DatabaseService>();
    final gpsLocation = GpsCoordinates(
        id: dbService.uuid.v4(),
        latitude: mapController.center.latitude,
        longitude: mapController.center.longitude);
    final nav = locator<NavigationService>();

    nav.back(result: gpsLocation);
  }
}
