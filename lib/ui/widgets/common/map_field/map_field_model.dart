import 'package:badr_agri/app/app.locator.dart';
import 'package:badr_agri/app/app.router.dart';
import 'package:badr_agri/domain/location.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class MapFieldModel extends BaseViewModel {
  final textController = TextEditingController();

  Future<void> onGpsClick() async {
    final navService = locator<NavigationService>();

    final coordinates = await navService.replaceWithMapLocationView();
    if (coordinates is GpsCoordinates) {
      textController.text = "${coordinates.latitude} , ${coordinates.longitude} ";
    }
  }
}
