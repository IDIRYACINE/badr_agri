import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'form_selector_model.dart';

class FormSelector extends StackedView<FormSelectorModel> {
  const FormSelector({super.key});

  @override
  Widget builder(
    BuildContext context,
    FormSelectorModel viewModel,
    Widget? child,
  ) {
    return const SizedBox.shrink();
  }

  @override
  FormSelectorModel viewModelBuilder(
    BuildContext context,
  ) =>
      FormSelectorModel();
}
