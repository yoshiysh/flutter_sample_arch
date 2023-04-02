import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'injection.config.dart';

@injectableInit
Future<void> configureDataModuleDependencies(GetIt locator) async =>
    await locator.init();
