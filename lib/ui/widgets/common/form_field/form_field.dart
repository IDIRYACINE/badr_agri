import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'form_field_model.dart';

class AppFormField extends StackedView<AppFormFieldModel> {
  final String label;
  final Function(String? value)? onUpdate;
  final Function()? onTap;
  final bool disabled;
  final TextEditingController? controller;

  const AppFormField(
      {super.key,
      required this.label,
      this.onTap,
      this.onUpdate,
      this.disabled = false,
      this.controller});

  @override
  Widget builder(
    BuildContext context,
    AppFormFieldModel viewModel,
    Widget? child,
  ) {
    return TextFormField(
      onTap: onTap,
      readOnly: disabled,
      onChanged: onUpdate,
      controller: controller,
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
          borderSide: BorderSide(
            color: Theme.of(context).colorScheme.primary,
            width: 2.5,
          ),
        ),
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
