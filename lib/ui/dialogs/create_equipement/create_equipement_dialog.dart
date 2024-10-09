import 'package:badr_agri/ui/widgets/common/form_field/form_field.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import 'create_equipement_dialog_model.dart';

class CreateEquipementDialog extends StackedView<CreateEquipementDialogModel> {
  final DialogRequest request;
  final Function(DialogResponse) completer;

  const CreateEquipementDialog({
    Key? key,
    required this.request,
    required this.completer,
  }) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    CreateEquipementDialogModel viewModel,
    Widget? child,
  ) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      backgroundColor: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            AppFormField(label: "Equipement Name", onUpdate: viewModel.setName),
            AppFormField(label: "Quantity", onUpdate: viewModel.setQuantity),
            OutlinedButton(
                onPressed: viewModel.create, child: const Text("Confirm"))
          ],
        ),
      ),
    );
  }

  @override
  CreateEquipementDialogModel viewModelBuilder(BuildContext context) =>
      CreateEquipementDialogModel();
}
