import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@module
abstract class DataModule {
  @singleton
  @preResolve
  Future<SharedPreferences> get pref => SharedPreferences.getInstance();
}
