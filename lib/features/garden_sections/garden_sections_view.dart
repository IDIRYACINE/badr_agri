import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'garden_sections_viewmodel.dart';

class GardenSectionsView extends StackedView<GardenSectionsViewModel> {
  const GardenSectionsView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    GardenSectionsViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Container(
        padding: const EdgeInsets.only(left: 25.0, right: 25.0),
      ),
    );
  }

  @override
  GardenSectionsViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      GardenSectionsViewModel();
}