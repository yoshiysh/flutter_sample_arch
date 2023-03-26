import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_sample/data/data_source/theme_data_source.dart';
import 'package:shared_preferences/shared_preferences.dart';

final themeDataSourceProvider = Provider((ref) => ThemeLocalDataSource());

class ThemeLocalDataSource extends ThemeDataSource {
  static const _KEY_THEME = "key_theme";

  @override
  Future<void> setTheme(bool value) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setBool(_KEY_THEME, value);
  }

  @override
  Future<bool> getTheme() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.getBool(_KEY_THEME) ?? false;
  }
}
