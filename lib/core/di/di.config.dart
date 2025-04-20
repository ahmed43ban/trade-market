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
import '../../features/auth/signUp/data/repositories/SignUpRepoImpl.dart'
    as _i615;
import '../../features/auth/signUp/domain/repositories/SignUpRepo.dart'
    as _i560;
import '../../features/auth/signUp/domain/use_cases/SignUpUseCase.dart' as _i12;
import '../../features/auth/signUp/presentation/manager/sign_up_view_model_cubit.dart'
    as _i111;
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
    gh.factory<_i560.SignUpRepo>(
        () => _i615.SignUpRepoImpl(gh<_i333.SignUpDataSource>()));
    gh.factory<_i12.SignUpUseCase>(
        () => _i12.SignUpUseCase(gh<_i560.SignUpRepo>()));
    gh.factory<_i111.SignUpViewModelCubit>(
        () => _i111.SignUpViewModelCubit(gh<_i12.SignUpUseCase>()));
    return this;
  }
}
