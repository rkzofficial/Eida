import 'package:injectable/injectable.dart';

import '../../presentation/routes/router.gr.dart';

@module
abstract class AppRouterInjectableModule {
  @lazySingleton
  AppRouter get appRouter => AppRouter();
}
