import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'form_field_model.dart';

class AppFormField extends StackedView<AppFormFieldModel> {
  final String label;
  final Function(String? value) onUpdate;

  const AppFormField({super.key,required this.label , required this.onUpdate});

  @override
  Widget builder(
    BuildContext context,
    AppFormFieldModel viewModel,
    Widget? child,
  ) {
    return TextFormField(
      onChanged: onUpdate,
      decoration: InputDecoration(
        labelText: label,
        labelStyle: TextStyle(
            color: Theme.of(context).colorScheme.primary, fontSize: 18),
        floatingLabelBehavior: FloatingLabelBehavior.auto,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(
            color: Theme.of(context).colorScheme.primary,
            width: 2.0,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide:  BorderSide(
            color: Theme.of(context).colorScheme.primary,
            width: 2.5,
          ),
        ),
        prefixIcon:  Icon(Icons.text_fields,
            color: Theme.of(context).colorScheme.primary),
        hintText: label,
        hintStyle: const TextStyle(color: Colors.grey),
        filled: true,
        fillColor: Theme.of(context).colorScheme.primary.withOpacity(0.1),
      ),
    );
  }

  @override
  AppFormFieldModel viewModelBuilder(
    BuildContext context,
  ) =>
      AppFormFieldModel();
}
