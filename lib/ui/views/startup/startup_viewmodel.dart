import 'package:badr_agri/infrastructure/auth_service.dart';
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

    if (!authService.isAuthenticated()) {
      _navigationService.replaceWithLoginView();
    }

    _navigationService.replaceWithLoginView();
  }
}
