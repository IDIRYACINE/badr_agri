import 'package:badr_agri/app/app.locator.dart';
import 'package:badr_agri/app/app.router.dart';
import 'package:badr_agri/domain/garden.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class GardenScreenViewModel extends BaseViewModel {
  List<Garden> gardens = List.filled(3, Garden.mock());

  void addGarden() {
    final nav = locator<NavigationService>();
    nav.navigateToGardenCreateView();
  }
}
