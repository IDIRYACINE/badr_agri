import 'package:badr_agri/infrastructure/auth_service.dart';
import 'package:badr_agri/infrastructure/database/database.dart';
import 'package:badr_agri/infrastructure/database_service.dart';
import 'package:stacked/stacked.dart';
import 'package:badr_agri/app/app.locator.dart';
import 'package:badr_agri/app/app.router.dart';
import 'package:stacked_services/stacked_services.dart';

class StartupViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

  // Place anything here that needs to happen before we get into the application
  Future runStartupLogic() async {
    await Future.delayed(const Duration(seconds: 3));
    // 1. Get the Authentication and NavigationService
    final authService = locator<AuthService>();
    // This is where you can make decisions on where your app should navigate when
    // you have custom startup logic

    if (authService.isAuthenticated() == false) {
      _navigationService.replaceWithLoginView();
      return;
    }

    final databaseService = locator<DatabaseService>();
    databaseService.userId = authService.userId();
    final authUser =authService.user();
    final db = databaseService.database;
     final user = await db.managers.users
          .filter((f) => f.id(authUser!.id))
          .getSingleOrNull();
      if (user == null) {
        db.into(db.users).insert(UsersCompanion.insert(
            id: authUser!.id,
            fullname: authUser.email ?? authUser.id));
      }

    _navigationService.replaceWithHomeView();
  }
}
