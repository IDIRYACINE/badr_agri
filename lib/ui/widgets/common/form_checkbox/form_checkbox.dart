import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'form_checkbox_model.dart';

class AppFormCheckbox<T> extends StackedView<FormCheckboxModel> {
  final T data;
  final String Function(T) readLabel;
  final void Function(T, bool) onChecked;
  final bool initialChecked;
  const AppFormCheckbox(
      {super.key,
      required this.data,
      required this.initialChecked,
      required this.readLabel,
      required this.onChecked});

  void handleCheck(bool? v, FormCheckboxModel viewModel) {
    bool value = v ?? false;
    onChecked(data, value);
    viewModel.setChecked(value);
  }

  @override
  Widget builder(
    BuildContext context,
    FormCheckboxModel viewModel,
    Widget? child,
  ) {
    return Row(
      children: [
        Checkbox(
            value: viewModel.isChecked,
            onChanged: (v) => handleCheck(v, viewModel)),
        Text(readLabel(data)),
      ],
    );
  }

  @override
  FormCheckboxModel viewModelBuilder(
    BuildContext context,
  ) =>
      FormCheckboxModel(isChecked: initialChecked);
}
