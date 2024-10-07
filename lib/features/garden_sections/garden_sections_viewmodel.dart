import 'package:badr_agri/app/app.locator.dart';
import 'package:badr_agri/app/app.router.dart';
import 'package:badr_agri/domain/garden_section.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class GardenSectionsViewModel extends BaseViewModel {
  final List<GardenSection> sections;

  GardenSectionsViewModel({required this.sections, });

  void addGardenSection() async {
    final navigationService = locator<NavigationService>();

    final gardenSection =
        await navigationService.navigateToGardenSectionCreateView();
    if (gardenSection is GardenSection) {
      rebuildUi();

    }
  }
}
