import 'package:data/data_source/theme_data_source.dart';
import 'package:domain/repository/theme_repository.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: ThemeRepository)
class ThemeDefaultRepository implements ThemeRepository {
  @factoryMethod
  ThemeDefaultRepository.from(this._dataSource);

  final ThemeDataSource _dataSource;

  @override
  Future setTheme(bool isDarkMode) async => _dataSource.setTheme(isDarkMode);

  @override
  Future<bool> getTheme() async => _dataSource.getTheme();
}
