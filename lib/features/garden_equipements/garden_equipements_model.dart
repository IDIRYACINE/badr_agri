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

  void addEquipement() {
    final dialogSerivce = locator<DialogService>();

    dialogSerivce.showCustomDialog(
      variant: DialogType.createEquipement,
      title: "Test"
    );
  }

  onEquipementDialogResponse(DialogResponse res) {
    final equipement = res.data as Equipement?;
    if (equipement != null) {
      data.add(equipement);
      rebuildUi();
    }

    return equipement;
  }
}
