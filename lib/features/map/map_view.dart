import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'map_viewmodel.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class MapView extends StackedView<MapViewModel> {
  const MapView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    MapViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Container(
        padding: const EdgeInsets.only(left: 25.0, right: 25.0),
        child: FlutterMap(
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
            const MarkerLayer(
              markers: [],
            )
          ],
        ),
      ),
      floatingActionButton: OutlinedButton(
          onPressed: viewModel.confirm, child: const Text("Confirm")),
    );
  }

  @override
  MapViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      MapViewModel();
}
