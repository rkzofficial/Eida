import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../application/auth/sign_in_form/sign_in_form_bloc.dart';
import '../../../widgets/expanded_button.dart';

class SignInGoogleButton extends StatelessWidget {
  final bool isLoading;

  const SignInGoogleButton({Key? key, this.isLoading = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ExpandedButton(
      buttonColor: const Color.fromARGB(255, 238, 237, 237),
      textValue: 'Sign in with Google',
      textColor: const Color(0xff222222),
      isLoading: isLoading,
      onPressed: () {
        context
            .read<SignInFormBloc>()
            .add(const SignInFormEvent.signInWithGooglePressed());
      },
    );
  }
}
