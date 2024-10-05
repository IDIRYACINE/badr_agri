import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'form_field_model.dart';

class FormField extends StackedView<FormFieldModel> {
  const FormField({super.key});

  @override
  Widget builder(
    BuildContext context,
    FormFieldModel viewModel,
    Widget? child,
  ) {
    return const SizedBox.shrink();
  }

  @override
  FormFieldModel viewModelBuilder(
    BuildContext context,
  ) =>
      FormFieldModel();
}
