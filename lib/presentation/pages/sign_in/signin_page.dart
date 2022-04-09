import 'package:eida/presentation/pages/sign_in/widgets/sign_up_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../../application/auth/sign_in_form/sign_in_form_bloc.dart';
import '../../../injection.dart';
import 'widgets/sign_in_form.dart';

class SignInPage extends HookWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isRegister = useState(false);

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(24.0, 40.0, 24.0, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      isRegister.value
                          ? 'Register your account'
                          : 'Sign in to your\naccount',
                      style: Theme.of(context)
                          .textTheme
                          .headline4!
                          .copyWith(color: Colors.black),
                    ),
                    const SizedBox(height: 20),
                    Image.asset('assets/images/accent.png', height: 4),
                  ],
                ),
                const SizedBox(height: 48),
                BlocProvider(
                  create: (context) => getIt<SignInFormBloc>(),
                  child: isRegister.value
                      ? const SignupForm()
                      : const SignInForm(),
                ),
                const SizedBox(height: 48),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      !isRegister.value
                          ? "Don't have an account? "
                          : "Already have an account? ",
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ).copyWith(color: Colors.grey[600]),
                    ),
                    GestureDetector(
                      onTap: () {
                        isRegister.value = !isRegister.value;
                      },
                      child: Text(
                        !isRegister.value ? 'Register' : 'Sign in',
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ).copyWith(color: const Color(0xff2972ff)),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
