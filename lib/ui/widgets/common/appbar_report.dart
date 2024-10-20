import 'package:badr_agri/app/app.locator.dart';
import 'package:badr_agri/app/app.router.dart';
import 'package:badr_agri/domain/garden.dart';
import 'package:flutter/material.dart';
import 'package:stacked_services/stacked_services.dart';

class AppbarReport extends StatelessWidget implements PreferredSizeWidget {
  final Garden garden;
  const AppbarReport({super.key, required this.garden});

  void navigateBack() {
    final navService = locator<NavigationService>();

    navService.back();
  }

  void navigateToReport() {
    final navService = locator<NavigationService>();

    navService.navigateToGardenReportView(garden: garden);
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Row(
        children: [
          IconButton.filled(
            onPressed: navigateBack,
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          IconButton.filled(
            onPressed: navigateToReport,
            icon: const Icon(
              Icons.report,
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
