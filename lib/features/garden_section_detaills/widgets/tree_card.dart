import 'package:badr_agri/app/app.locator.dart';
import 'package:badr_agri/app/app.router.dart';
import 'package:badr_agri/domain/tree_type.dart';
import 'package:flutter/material.dart';
import 'package:stacked_services/stacked_services.dart';

class TreeCard extends StatelessWidget {
  final Tree tree;
  final int index;
  const TreeCard({super.key, required this.tree, required this.index});

  void navigateToTreeHistor() {
    final navigationService = locator<NavigationService>();

    navigationService.navigateToTreeDetailsView(tree: tree);
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: navigateToTreeHistor,
      child: Card(
        child: Center(child: Text(index.toString())),
      ),
    );
  }
}
