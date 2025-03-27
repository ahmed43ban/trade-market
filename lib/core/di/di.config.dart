// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../../features/auth/signUp/data/data_sources/Impl/SignUpApiDataSourceImpl.dart'
    as _i763;
import '../../features/auth/signUp/data/data_sources/SignUpDataSource.dart'
    as _i333;
import '../remote/ApiManger.dart' as _i851;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.singleton<_i851.ApiManger>(() => _i851.ApiManger());
    gh.factory<_i333.SignUpDataSource>(
        () => _i763.SignUpApiDataSourceImpl(gh<_i851.ApiManger>()));
    return this;
  }
}
