import 'package:badr_agri/app/app.locator.dart';
import 'package:badr_agri/app/app.router.dart';
import 'package:flutter/material.dart';
import 'package:stacked_services/stacked_services.dart';

class AppbarDefault extends StatelessWidget implements PreferredSizeWidget {
  const AppbarDefault({super.key});

  void navigateToProfile() {
    final navService = locator<NavigationService>();

    navService.navigateToProfileView();
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton.filled(
          onPressed: navigateToProfile, icon: const Icon(Icons.settings,color: Colors.white,)),
    );
  }
  
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);}
