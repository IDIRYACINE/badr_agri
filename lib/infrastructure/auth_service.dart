class SignupDto {}

class AuthService {
  bool _isAuthenticated = false;

  Future<void> login({required String email, required String password}) async {
    _isAuthenticated = true;
  }

  Future<void> signup({required SignupDto data}) async {}

  bool isAuthenticated() {
    return _isAuthenticated;
  }
}
