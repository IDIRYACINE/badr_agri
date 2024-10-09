import 'package:badr_agri/app/app.dialogs.dart';
import 'package:badr_agri/app/app.locator.dart';
import 'package:badr_agri/domain/equipements.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class GardenEquipementsModel extends BaseViewModel {
  final List<Equipement> data;

  GardenEquipementsModel({required this.data});

  void removeEquipement(Equipement equipement) {
    data.remove(equipement);
  }

  void addEquipement() async {
    final dialogSerivce = locator<DialogService>();

    final equipement = (await dialogSerivce.showCustomDialog(
      variant: DialogType.createEquipement,
    ))
        ?.data;

    if (equipement is Equipement) {
      data.add(equipement);
      rebuildUi();
    }
  }

  void delete(Equipement equipement) {
    data.remove(equipement);
  }
}
