import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'section_create_viewmodel.dart';

class SectionCreateView extends StackedView<SectionCreateViewModel> {
  const SectionCreateView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    SectionCreateViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Container(
        padding: const EdgeInsets.only(left: 25.0, right: 25.0),
      ),
    );
  }

  @override
  SectionCreateViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      SectionCreateViewModel();
}
