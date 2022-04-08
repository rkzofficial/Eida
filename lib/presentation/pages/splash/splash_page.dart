import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/auth/auth_bloc.dart';
import '../../../injection.dart';
import '../../routes/router.gr.dart';

class SplashPage extends StatelessWidget implements AutoRouteWrapper {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.map(
          initial: (_) {},
          authenticated: (_) {
            getIt<AppRouter>().replace(const DashboardRoute());
          },
          unauthenticated: (_) {
            getIt<AppRouter>().replace(const SignInRoute());
          },
        );
      },
      child: const Center(
        child: CircularProgressIndicator(),
      ),
    );
  }

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<AuthBloc>()..add(const AuthEvent.authCheckRequested()),
      child: this, // this as the child Important!
    );
  }
}
