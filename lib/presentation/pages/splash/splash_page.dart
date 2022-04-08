import 'package:eida/presentation/routes/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    context.router.replace(
      const DashboardRoute(),
    );
    return Container();
  }
}
