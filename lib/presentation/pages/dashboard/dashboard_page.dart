import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/auth/auth_bloc.dart';
import '../../../injection.dart';
import '../../routes/router.gr.dart';

class DashboardPage extends StatelessWidget implements AutoRouteWrapper {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              getIt<AppRouter>().replace(const SignInRoute());
              context.read<AuthBloc>().add(const AuthEvent.signedOut());
            },
            child: const Text('Log Out')),
      ),
    );
  }

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<AuthBloc>(),
      child: this, // this as the child Important!
    );
  }
}
