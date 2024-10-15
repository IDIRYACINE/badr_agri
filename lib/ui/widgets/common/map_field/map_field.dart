import 'package:badr_agri/domain/location.dart';
import 'package:badr_agri/ui/widgets/common/form_field/form_field.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'map_field_model.dart';

class MapField extends StackedView<MapFieldModel> {
  
  final void Function(GpsCoordinates coordinates) onGps;
  const MapField( {
    super.key,
    required this.onGps,
  });

  @override
  Widget builder(
    BuildContext context,
    MapFieldModel viewModel,
    Widget? child,
  ) {
    return AppFormField(
        label: "Gps",
        disabled: true,
        onTap:viewModel.onGpsClick,
        controller: viewModel.controller,
    );
  }

  @override
  MapFieldModel viewModelBuilder(
    BuildContext context,
  ) =>
      MapFieldModel();
}
