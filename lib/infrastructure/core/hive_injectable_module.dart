import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';

@module
abstract class HiveInjectableModule {
  @preResolve
  @lazySingleton
  Future<Box> get openBox async {
    await Hive.initFlutter();
    return Hive.openBox<String>('eida_storage');
  }
}
