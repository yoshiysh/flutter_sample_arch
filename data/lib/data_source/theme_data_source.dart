abstract class ThemeDataSource {
  Future<void> setTheme(bool isDarkMode);
  Future<bool> getTheme();
}
