import 'package:badr_agri/ui/widgets/common/form_field/form_field.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'profile_viewmodel.dart';

class ProfileView extends StackedView<ProfileViewModel> {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    ProfileViewModel viewModel,
    Widget? child,
  ) {
    viewModel.load();

    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Container(
        padding: const EdgeInsets.all( 25.0),
        child: Column(
          children: [
            AppFormField(
              label: "FullName",
              controller: viewModel.fullNameTextController,
            ),
            const SizedBox(
              height: 10,
            ),
            AppFormField(
              label: "Phone",
              controller: viewModel.phoneTextController,
            ),
            const SizedBox(
              height: 10,
            ),
            AppFormField(
              label: "Address",
              controller: viewModel.addressTextController,
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                OutlinedButton(
                    onPressed: viewModel.logout, child: const Text("Logout")),
                const SizedBox(
                  width: 10,
                ),
                OutlinedButton(
                    onPressed: viewModel.save, child: const Text("Save"))
              ],
            )
          ],
        ),
      ),
    );
  }

  @override
  ProfileViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      ProfileViewModel();
}
