import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'form_selector_model.dart';

class FormSelector<T> extends StackedView<FormSelectorModel> {
  final List<T> data;
  final String Function(T) readLabel;
  final void Function(T?) onChanged;
  final String label;
  const FormSelector(
      {super.key,
      required this.label,
      required this.data,
      required this.readLabel,
      required this.onChanged});

  List<DropdownMenuItem<T>> buildItems() {
    List<DropdownMenuItem<T>> items = data.map((el) {
      return DropdownMenuItem<T>(
        value: el, // Assign the value of the item
        child: Text(
            readLabel(el)), // Build the child widget using the passed builder
      );
    }).toList();

    return items;
  }

  void handleSelection(FormSelectorModel viewModel, T? selection) {
    onChanged(selection);
    viewModel.updateSelection(selection);
  }

  @override
  Widget builder(
    BuildContext context,
    FormSelectorModel viewModel,
    Widget? child,
  ) {
    return Row(
      children: [
        Text(label),
        const SizedBox(
          width: 10,
        ),
        DropdownButton(
            items: buildItems(),
            value: viewModel.selection,
            onChanged: (e) => handleSelection(viewModel, e as T?))
      ],
    );
  }

  @override
  FormSelectorModel viewModelBuilder(
    BuildContext context,
  ) =>
      FormSelectorModel<T>();
}
