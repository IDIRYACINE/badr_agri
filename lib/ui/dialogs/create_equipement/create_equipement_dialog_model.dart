import 'package:badr_agri/app/app.locator.dart';
import 'package:badr_agri/domain/equipements.dart';
import 'package:badr_agri/infrastructure/database_service.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class CreateEquipementDialogModel extends BaseViewModel {
  String? name;
  int quantity = 1;

  void setName(String? value) {
    name = value;
  }

  void setQuantity(String? value) {
    quantity = int.tryParse(value ?? "1") ?? 1;
  }

  void create() {
    final navService = locator<NavigationService>();
    final dbService = locator<DatabaseService>();

    final equipement = Equipement(
        id: dbService.uuid.v4(), name: name ?? "undefined", quantity: quantity);

    navService.back(result: DialogResponse(data: equipement));
  }
}
