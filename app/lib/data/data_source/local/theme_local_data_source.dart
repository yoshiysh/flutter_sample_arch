import 'package:app/data/data_source/local/shared_preferences.dart';
import 'package:app/data/data_source/theme_data_source.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

final themeDataSourceProvider = Provider((ref) {
  final sharedPreferences = ref.watch(sharedPreferencesProvider);
  return ThemeLocalDataSource(sharedPreferences);
});

class ThemeLocalDataSource extends ThemeDataSource {
  ThemeLocalDataSource(this._sharedPreferences);

  static const _keyTheme = "key_theme";
  final SharedPreferences _sharedPreferences;

  @override
  Future<void> setTheme(bool isDarkMode) async {
    _sharedPreferences.setBool(_keyTheme, isDarkMode);
  }

  @override
  Future<bool> getTheme() async {
    return _sharedPreferences.getBool(_keyTheme) ?? false;
  }
}
