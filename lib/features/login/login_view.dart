import 'package:badr_agri/ui/widgets/common/form_field/form_field.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'login_viewmodel.dart';

class LoginView extends StackedView<LoginViewModel> {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    LoginViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Container(
        padding: const EdgeInsets.only(left: 25.0, right: 25.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text("TBD LOGO"),
             AppFormField(label: "Email",onUpdate: viewModel.setEmail,),
             AppFormField(label: "Password",onUpdate: viewModel.setPassword,),
            OutlinedButton(
              onPressed: viewModel.login,
              child: const Text("Login"),
            ),
            OutlinedButton(
              onPressed: viewModel.register,
              child: const Text("Register"),
            )
          ],
        ),
      ),
    );
  }

  @override
  LoginViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      LoginViewModel();
}
