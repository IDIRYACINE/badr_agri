import 'package:badr_agri/app/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:stacked/stacked.dart';

import 'map_location_viewmodel.dart';

class MapLocationView extends StackedView<MapLocationViewModel> {
  const MapLocationView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    MapLocationViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: FlutterMap(
          mapController: viewModel.mapController,
          options: MapOptions(
            center: const LatLng(
                51.509364, -0.128928), // Center the map over London
            zoom: 9.2,
          ),
          children: [
            TileLayer(
              // Display map tiles from any source
              urlTemplate:
                  'https://tile.openstreetmap.org/{z}/{x}/{y}.png', // OSMF's Tile Server
              userAgentPackageName: 'com.example.app',
              // And many more recommended properties!
            ),
          ]),
      floatingActionButton: MaterialButton(
          color: yellow,
          textColor: Colors.white,
          onPressed: viewModel.confirmLocation,
          child: const Text("Confirm")),
    );
  }

  @override
  MapLocationViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      MapLocationViewModel();
}
