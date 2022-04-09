import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../../../application/auth/auth_bloc.dart';
import '../../../../application/auth/sign_in_form/sign_in_form_bloc.dart';
import '../../../../injection.dart';
import '../../../routes/router.gr.dart';
import '../../../widgets/expanded_button.dart';
import 'sign_in_google_button.dart';

class SignInForm extends HookWidget {
  const SignInForm({Key? key}) : super(key: key);

  void navigateToDashboard() {
    getIt<AppRouter>().replace(const DashboardRoute());
  }

  @override
  Widget build(BuildContext context) {
    final passwordVisible = useState(false);

    void togglePassword() {
      passwordVisible.value = !passwordVisible.value;
    }

    return BlocConsumer<SignInFormBloc, SignInFormState>(
      listener: ((_, state) {
        state.authFailureOrSuccessOption.fold(
          () => {},
          (either) => either.fold(
            (failure) => ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(
                  failure.map(
                    // Use localized strings here in your apps
                    cancelledByUser: (_) => 'Cancelled',
                    serverError: (_) => 'Server error',
                    emailAlreadyInUse: (_) => 'Email already in use',
                    invalidEmailAndPassword: (_) =>
                        'Invalid email and password combination',
                  ),
                ),
              ),
            ),
            (_) {
              navigateToDashboard();
              context
                  .read<AuthBloc>()
                  .add(const AuthEvent.authCheckRequested());
            },
          ),
        );
      }),
      builder: (context, state) {
        return Form(
          autovalidateMode: AutovalidateMode.onUserInteraction,
          child: Column(children: [
            Container(
              decoration: BoxDecoration(
                color: const Color(0xfff1f1f5),
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'Email',
                  hintStyle: Theme.of(context)
                      .textTheme
                      .bodyText1!
                      .copyWith(color: const Color(0xff94959b)),
                  border: const OutlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                ),
                autocorrect: false,
                onChanged: (value) => context
                    .read<SignInFormBloc>()
                    .add(SignInFormEvent.emailChanged(value)),
                validator: (_) => context
                    .read<SignInFormBloc>()
                    .state
                    .emailAddress
                    .value
                    .fold(
                      (f) => f.maybeMap(
                        invalidEmail: (_) => 'Invalid email',
                        orElse: () => null,
                      ),
                      (_) => null,
                    ),
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            Container(
              decoration: BoxDecoration(
                color: const Color(0xfff1f1f5),
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: TextFormField(
                obscureText: !passwordVisible.value,
                decoration: InputDecoration(
                  hintText: 'Password',
                  hintStyle: Theme.of(context)
                      .textTheme
                      .bodyText1!
                      .copyWith(color: const Color(0xff94959b)),
                  suffixIcon: IconButton(
                    color: const Color(0xff94959b),
                    splashRadius: 1,
                    icon: Icon(passwordVisible.value
                        ? Icons.visibility_outlined
                        : Icons.visibility_off_outlined),
                    onPressed: togglePassword,
                  ),
                  border: const OutlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                ),
                autocorrect: false,
                onChanged: (value) => context
                    .read<SignInFormBloc>()
                    .add(SignInFormEvent.passwordChanged(value)),
                validator: (_) =>
                    context.read<SignInFormBloc>().state.password.value.fold(
                          (f) => f.maybeMap(
                            shortPassword: (_) => 'Short password',
                            orElse: () => null,
                          ),
                          (_) => null,
                        ),
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            ExpandedButton(
              buttonColor: const Color(0xff2972ff),
              textValue: 'Sign in',
              textColor: Colors.white,
              isLoading: state.isSubmitting,
              onPressed: () => context.read<SignInFormBloc>().add(
                  const SignInFormEvent.signInWithEmailAndPasswordPressed()),
            ),
            const SizedBox(
              height: 24,
            ),
            Center(
              child: Text(
                'OR',
                style: Theme.of(context)
                    .textTheme
                    .headline6!
                    .copyWith(color: const Color(0xff94959b)),
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            SignInGoogleButton(
              isLoading: state.isSubmitting,
            )
          ]),
        );
      },
    );
  }
}
