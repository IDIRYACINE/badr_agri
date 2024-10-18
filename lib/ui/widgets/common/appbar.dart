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

  void scanQr() {
     final navService = locator<NavigationService>();

    navService.navigateToQrScannerView();
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Row(
        children: [
          IconButton.filled(
            onPressed: navigateToProfile,
            icon: const Icon(
              Icons.settings,
              color: Colors.white,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          IconButton.filled(
            onPressed: scanQr,
            icon: const Icon(
              Icons.camera,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
