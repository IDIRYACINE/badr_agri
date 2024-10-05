import 'package:badr_agri/app/app.locator.dart';
import 'package:badr_agri/infrastructure/auth_service.dart';
import 'package:stacked/stacked.dart';

class SignupViewModel extends BaseViewModel {
  String? _email, _password;

  setEmail(String? value) {
    _email = value;
  }

  setPassword(String? value) {
    _password = value;
  }

  setFullName(String? value) {}

  void confirm() {
    if (_email != null && _password != null) {
      final authService = locator<AuthService>();
      authService.signup(data: SignupDto(email: _email!, password: _password!));
    }
  }
}
