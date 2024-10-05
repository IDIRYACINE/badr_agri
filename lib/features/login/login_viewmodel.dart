import 'package:badr_agri/app/app.locator.dart';
import 'package:badr_agri/app/app.router.dart';
// ignore: depend_on_referenced_packages
import 'package:gotrue/src/types/auth_response.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class LoginViewModel extends BaseViewModel {
  void onLogin(AuthResponse response) {
    if (response.user != null) {
      final navigationsService = locator<NavigationService>();

      navigationsService.navigateToHomeView();
      return;
    }

    final dialogService = locator<DialogService>();

    dialogService.showDialog(description: "Invalid login");
  }

  void onSignup(AuthResponse response) {
    if (response.user != null) {
      final navigationsService = locator<NavigationService>();

      navigationsService.navigateToHomeView();
      return;
    }

    final dialogService = locator<DialogService>();

    dialogService.showDialog(description: "Invalid login");
  }
}
