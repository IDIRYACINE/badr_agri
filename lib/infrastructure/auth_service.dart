import 'package:badr_agri/app/app.locator.dart';
import 'package:badr_agri/app/app.router.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class SignupDto {
  final String email;
  final String password;

  SignupDto({required this.email, required this.password});
}

class AuthService {
  Future<void> login({required String email, required String password}) async {
    
  }

  Future<void> signup({required SignupDto data}) async {
    final navigationService = locator<NavigationService>();
    final dialogService = locator<DialogService>();

    try {
      final res = await Supabase.instance.client.auth
          .signUp(email: data.email, password: data.password);
      if (res.user != null) {
        navigationService.navigateToHomeView();
        return;
      }
      dialogService.showDialog(description: "error");
    } catch (e) {
      dialogService.showDialog(description: e.toString());
    }
  }

  bool isAuthenticated() {
    return Supabase.instance.client.auth.currentUser != null;
  }

  String? userId() {
    return Supabase.instance.client.auth.currentUser?.id;
  }

  User? user() {
    return Supabase.instance.client.auth.currentUser;
  }
}
