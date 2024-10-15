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
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Container(
        padding: const EdgeInsets.only(left: 25.0, right: 25.0),
        child: Column(
          children: [
            OutlinedButton(
              
                onPressed: viewModel.logout, child: const Text("Logout"))
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
