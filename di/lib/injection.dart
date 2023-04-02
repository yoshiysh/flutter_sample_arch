import 'package:data/di/injection.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

final locator = GetIt.instance;

@injectableInit
Future<void> configureDependencies(String env) async {
  await configureDataModuleDependencies(locator);
}
