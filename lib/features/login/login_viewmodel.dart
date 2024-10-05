import 'package:badr_agri/app/app.locator.dart';
import 'package:badr_agri/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class LoginViewModel extends BaseViewModel {

  String? _email;
  String? _password;

  void setEmail (String? value){
    _email = value;
  }


  void setPassword (String? value){
    _password = value;
  }

  void register() {
    final navigationsService = locator<NavigationService>();

    navigationsService.navigateToSignupView();
  }

  void login() {
     final dialogService = locator<DialogService>();
     dialogService.showDialog(description: "$_email $_password");
  }

}

