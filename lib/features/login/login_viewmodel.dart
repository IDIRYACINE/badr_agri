import 'package:badr_agri/app/app.locator.dart';
import 'package:badr_agri/app/app.router.dart';
import 'package:badr_agri/infrastructure/database/database.dart';
import 'package:badr_agri/infrastructure/database_service.dart';
import 'package:drift/drift.dart';
// ignore: depend_on_referenced_packages, implementation_imports
import 'package:gotrue/src/types/auth_response.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class LoginViewModel extends BaseViewModel {
  void onLogin(AuthResponse response) async {
    if (response.user != null) {
      final navigationsService = locator<NavigationService>();

      final databaseService = locator<DatabaseService>();
      
      final db = databaseService.database;

      final user = await db.managers.users
          .filter((f) => f.id(response.user!.id))
          .getSingleOrNull();
      if (user == null) {
        db.into(db.users).insert(UsersCompanion.insert(
            id: response.user!.id,
            fullname: response.user!.email ?? response.user!.id));
      }

      db.users.selectOnly();
      databaseService.userId = response.user!.id;

      navigationsService.navigateToHomeView();
      return;
    }

    final dialogService = locator<DialogService>();

    dialogService.showDialog(description: "Invalid login");
  }

  void onSignup(AuthResponse response) {
    if (response.user != null) {
      final navigationsService = locator<NavigationService>();
      final databaseService = locator<DatabaseService>();
      final db = databaseService.database;

      db.into(db.users).insert(UsersCompanion.insert(
          id: response.user!.id,
          fullname: response.user!.email ?? response.user!.id));

      databaseService.userId = response.user!.id;

      navigationsService.navigateToHomeView();
      return;
    }

    final dialogService = locator<DialogService>();

    dialogService.showDialog(description: "Invalid login");
  }
}
