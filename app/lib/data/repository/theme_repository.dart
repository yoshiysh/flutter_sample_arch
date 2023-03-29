abstract class ThemeRepository {
  Future setTheme(bool isDarkMode);
  Future<bool> getTheme();
}
