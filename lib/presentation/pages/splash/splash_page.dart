import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/auth/auth_bloc.dart';
import '../../../injection.dart';
import '../../routes/router.gr.dart';

class SplashPage extends StatelessWidget {
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
}
