import 'package:eida/application/auth/auth_bloc.dart';
import 'package:eida/presentation/pages/dashboard/widgets/profile_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
              const SizedBox(height: 50),
              BlocBuilder<AuthBloc, AuthState>(
                builder: (context, state) => state.maybeWhen(
                  orElse: () => Container(),
                  authenticated: (user) => ProfileHeader(
                    name: user.name.getOrCrash(),
                    photoUrl: user.photoUrl.getOrCrash(),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 25.0),
        child: FloatingActionButton.extended(
          onPressed: () {},
          icon: const Icon(Icons.add),
          label: const Text('Start a conversation'),
          backgroundColor: const Color(0xff2972ff),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
