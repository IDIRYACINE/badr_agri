import 'package:badr_agri/app/app.locator.dart';
import 'package:badr_agri/app/app.router.dart';
import 'package:badr_agri/infrastructure/auth_service.dart';
import 'package:badr_agri/infrastructure/database/database.dart';
import 'package:badr_agri/infrastructure/database_service.dart';
import 'package:drift/drift.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class ProfileViewModel extends BaseViewModel {
  final TextEditingController fullNameTextController = TextEditingController();

  final TextEditingController phoneTextController = TextEditingController();

  final TextEditingController addressTextController = TextEditingController();

  void logout() {
    final navService = locator<NavigationService>();
    Supabase.instance.client.auth.signOut().then((d) {
      navService.navigateToLoginView();
      return d;
    });
  }

  void save() async {
    final authService = locator<AuthService>();
    final userAuth = authService.user();
    final db = locator<DatabaseService>().database;

    if (userAuth != null) {
      final fullName = fullNameTextController.text;
      final address = addressTextController.text;
      final phone = phoneTextController.text;

      await (db.update(db.users)..where((u) => u.id.equals(userAuth.id))).write(
        UsersCompanion(
            fullname: Value(fullName),
            phoneNumber: Value(phone),
            address: Value(address)),
      );
    }

    final dialogService = locator<DialogService>();
    dialogService.showDialog(title: "Profile Updated");
  }

  void load() async {
    final authService = locator<AuthService>();
    final userAuth = authService.user();
    final db = locator<DatabaseService>().database;

    if (userAuth != null) {
      final user = await db.managers.users
          .filter((f) => f.id(userAuth.id))
          .getSingleOrNull();

      if (user != null) {
        fullNameTextController.text = user.fullname;
        addressTextController.text = user.address ?? "";
        phoneTextController.text = user.phoneNumber ?? "";
      }
    }
  }
}
