import 'package:badr_agri/app/app.locator.dart';
import 'package:badr_agri/domain/location.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class MapViewModel extends BaseViewModel {
  MapController mapController = MapController();
  void confirm() {
    final nav = locator<NavigationService>();

    final gps = GpsCoordinates(
        id: "id",
        latitude: mapController.center.latitude,
        longitude: mapController.center.longitude);
    nav.back(result: gps);
  }
}
