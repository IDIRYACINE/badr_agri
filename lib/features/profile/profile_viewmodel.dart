import 'package:badr_agri/app/app.locator.dart';
import 'package:badr_agri/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class ProfileViewModel extends BaseViewModel {
  void logout() {
    final navService = locator<NavigationService>();
    Supabase.instance.client.auth.signOut().then((d) {
      navService.navigateToLoginView();
      return d;
    });
  }
}
