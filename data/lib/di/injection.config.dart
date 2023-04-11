// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:data/data_source/auth_data_source.dart' as _i3;
import 'package:data/data_source/github_data_source.dart' as _i15;
import 'package:data/data_source/local/theme_local_data_source.dart' as _i11;
import 'package:data/data_source/network/api/github_api.dart' as _i8;
import 'package:data/data_source/network/auth_network_data_source.dart' as _i4;
import 'package:data/data_source/network/common/api_client.dart' as _i14;
import 'package:data/data_source/network/github_network_data_source.dart'
    as _i16;
import 'package:data/data_source/theme_data_source.dart' as _i10;
import 'package:data/di/data_module.dart' as _i19;
import 'package:data/repository/auth_default_repository.dart' as _i6;
import 'package:data/repository/github_default_repository.dart' as _i18;
import 'package:data/repository/theme_default_repository.dart' as _i13;
import 'package:domain/repository/auth_repository.dart' as _i5;
import 'package:domain/repository/github_repository.dart' as _i17;
import 'package:domain/repository/theme_repository.dart' as _i12;
import 'package:get_it/get_it.dart' as _i1;
import 'package:http/http.dart' as _i7;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i9;

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
    gh.lazySingleton<_i3.AuthDataSource>(
        () => _i4.AuthNetworkDataSource.from());
    gh.lazySingleton<_i5.AuthRepository>(
        () => _i6.AuthDefaultRepository.from(gh<_i3.AuthDataSource>()));
    gh.singleton<_i7.Client>(dataModule.httpClient);
    gh.lazySingleton<_i8.GithubApi>(() => _i8.GithubApi());
    await gh.singletonAsync<_i9.SharedPreferences>(
      () => dataModule.pref,
      preResolve: true,
    );
    gh.lazySingleton<_i10.ThemeDataSource>(
        () => _i11.ThemeLocalDataSource.from(gh<_i9.SharedPreferences>()));
    gh.lazySingleton<_i12.ThemeRepository>(
        () => _i13.ThemeDefaultRepository.from(gh<_i10.ThemeDataSource>()));
    gh.lazySingleton<_i14.ApiClient>(
        () => _i14.ApiClient.from(gh<_i7.Client>()));
    gh.lazySingleton<_i15.GithubDataSource>(
        () => _i16.GithubNetworkDataSource.from(
              gh<_i14.ApiClient>(),
              gh<_i8.GithubApi>(),
            ));
    gh.lazySingleton<_i17.GithubRepository>(
        () => _i18.GithubDefaultRepository.from(gh<_i15.GithubDataSource>()));
    return this;
  }
}

class _$DataModule extends _i19.DataModule {}
