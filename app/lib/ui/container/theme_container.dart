import 'package:app/data/repository/default/theme_default_repository.dart';
import 'package:app/data/repository/theme_repository.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final themeContainerProvider = Provider((ref) {
  final repository = ref.watch(themeRepositoryProvider);
  return ThemeContainer(repository);
});

class ThemeContainer extends ChangeNotifier {
  ThemeContainer(this._themeRepository);

  final ThemeRepository _themeRepository;
  bool isDarkTheme = false;

  void setTheme(bool isDarkTheme) {
    this.isDarkTheme = isDarkTheme;
    _themeRepository.setTheme(isDarkTheme);
  }

  void getTheme() {
    _themeRepository.getTheme().then((value) => isDarkTheme = value);
  }
}
