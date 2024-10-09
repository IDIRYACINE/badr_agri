import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:supabase_auth_ui/supabase_auth_ui.dart';

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
             Image.asset("assets/logo.png",width: 300,),
            SupaEmailAuth(
              redirectTo: kIsWeb ? null : 'io.mydomain.myapp://callback',
              onSignInComplete: viewModel.onLogin,
              onSignUpComplete: viewModel.onSignup,
              metadataFields: [
                MetaDataField(
                  prefixIcon: const Icon(Icons.person),
                  label: 'Username',
                  key: 'username',
                  validator: (val) {
                    if (val == null || val.isEmpty) {
                      return 'Please enter something';
                    }
                    return null;
                  },
                ),
              ],
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
