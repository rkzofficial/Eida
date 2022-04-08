import 'package:eida/injection.dart';
import 'package:eida/presentation/routes/router.gr.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Eida',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routerDelegate: getIt<AppRouter>().delegate(),
      routeInformationParser: getIt<AppRouter>().defaultRouteParser(),
    );
  }
}
