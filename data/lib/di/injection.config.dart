// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:data/data_source/auth_data_source.dart' as _i3;
import 'package:data/data_source/local/theme_local_data_source.dart' as _i12;
import 'package:data/data_source/remote/auth_remote_data_source.dart' as _i4;
import 'package:data/data_source/theme_data_source.dart' as _i11;
import 'package:data/di/data_module.dart' as _i15;
import 'package:data/repository/auth_default_repository.dart' as _i6;
import 'package:data/repository/github_default_repository.dart' as _i9;
import 'package:data/repository/theme_default_repository.dart' as _i14;
import 'package:domain/repository/auth_repository.dart' as _i5;
import 'package:domain/repository/github_repository.dart' as _i8;
import 'package:domain/repository/theme_repository.dart' as _i13;
import 'package:get_it/get_it.dart' as _i1;
import 'package:http/http.dart' as _i7;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i10;

extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  Future<_i1.GetIt> init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final dataModule = _$DataModule();
    gh.lazySingleton<_i3.AuthDataSource>(() => _i4.AuthRemoteDataSource.from());
    gh.lazySingleton<_i5.AuthRepository>(
        () => _i6.AuthDefaultRepository.from(gh<_i3.AuthDataSource>()));
    gh.singleton<_i7.Client>(dataModule.httpClient);
    gh.lazySingleton<_i8.GithubRepository>(
        () => _i9.GithubDefaultRepository(client: gh<_i7.Client>()));
    await gh.singletonAsync<_i10.SharedPreferences>(
      () => dataModule.pref,
      preResolve: true,
    );
    gh.lazySingleton<_i11.ThemeDataSource>(
        () => _i12.ThemeLocalDataSource.from(gh<_i10.SharedPreferences>()));
    gh.lazySingleton<_i13.ThemeRepository>(
        () => _i14.ThemeDefaultRepository.from(gh<_i11.ThemeDataSource>()));
    return this;
  }
}

class _$DataModule extends _i15.DataModule {}
