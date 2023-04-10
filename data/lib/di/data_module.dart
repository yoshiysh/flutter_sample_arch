import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;

@module
abstract class DataModule {
  @singleton
  @preResolve
  Future<SharedPreferences> get pref => SharedPreferences.getInstance();

  @singleton
  http.Client get httpClient => http.Client();
}
