import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/auth/auth_bloc.dart';
import '../../../application/auth/sign_in_form/sign_in_form_bloc.dart';
import '../../../injection.dart';
import '../../routes/router.gr.dart';

class SignInPage extends StatelessWidget implements AutoRouteWrapper {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: BlocListener<SignInFormBloc, SignInFormState>(
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
                  getIt<AppRouter>().replace(const DashboardRoute());
                  context
                      .read<AuthBloc>()
                      .add(const AuthEvent.authCheckRequested());
                },
              ),
            );
          }),
          child: ElevatedButton(
              onPressed: () {
                context
                    .read<SignInFormBloc>()
                    .add(const SignInFormEvent.signInWithGooglePressed());
              },
              child: const Text('Sign in with Google')),
        ),
      ),
    );
  }

  @override
  Widget wrappedRoute(BuildContext context) {
    return MultiBlocProvider(providers: [
      BlocProvider(create: (context) => getIt<SignInFormBloc>()),
      BlocProvider(create: (context) => getIt<AuthBloc>())
    ], child: this);
  }
}
