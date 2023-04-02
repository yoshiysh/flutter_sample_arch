import 'package:data/data_source/theme_data_source.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@LazySingleton(as: ThemeDataSource)
class ThemeLocalDataSource extends ThemeDataSource {
  final SharedPreferences _sharedPreferences;
  static const _keyTheme = "key_theme";

  @factoryMethod
  ThemeLocalDataSource.from(this._sharedPreferences);

  @override
  Future<void> setTheme(bool isDarkMode) async {
    _sharedPreferences.setBool(_keyTheme, isDarkMode);
  }

  @override
  Future<bool> getTheme() async {
    return _sharedPreferences.getBool(_keyTheme) ?? false;
  }
}
