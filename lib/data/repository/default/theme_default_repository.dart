import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_sample/data/data_source/local/theme_local_data_source.dart';
import 'package:flutter_sample/data/data_source/theme_data_source.dart';
import 'package:flutter_sample/data/repository/theme_repository.dart';

final themeRepositoryProvider = Provider((ref) {
  final dataSource = ref.watch(themeDataSourceProvider);
  return ThemeDefaultRepository(dataSource);
});

class ThemeDefaultRepository implements ThemeRepository {
  const ThemeDefaultRepository(this._dataSource);

  final ThemeDataSource _dataSource;

  @override
  Future setTheme(bool isDarkMode) async => _dataSource.setTheme(isDarkMode);

  @override
  Future<bool> getTheme() async => _dataSource.getTheme();
}
