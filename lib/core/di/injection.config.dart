// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:berito/core/auth/auth.dart' as _i755;
import 'package:berito/core/auth/auth_cubit.dart' as _i422;
import 'package:berito/core/router/app_router.dart' as _i564;
import 'package:berito/repository/auth_repository.dart' as _i670;
import 'package:berito/repository/mock/mock_auth_repository.dart' as _i821;
import 'package:berito/repository/mock/mock_student_repository.dart' as _i253;
import 'package:berito/repository/repository.dart' as _i694;
import 'package:berito/repository/student_repository.dart' as _i709;
import 'package:berito/screen/home/cubit/home_cubit.dart' as _i74;
import 'package:berito/screen/login/cubit/login_cubit.dart' as _i287;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    gh.lazySingleton<_i670.AuthRepository>(() => _i821.MockAuthRepository());
    gh.lazySingleton<_i709.StudentRepository>(
      () => _i253.MockStudentRepository(),
    );
    gh.lazySingleton<_i422.AuthCubit>(
      () => _i422.AuthCubit(gh<_i694.AuthRepository>()),
    );
    gh.factory<_i287.LoginCubit>(
      () => _i287.LoginCubit(gh<_i694.AuthRepository>()),
    );
    gh.lazySingleton<_i564.AppRouter>(
      () => _i564.AppRouter(gh<_i755.AuthCubit>()),
    );
    gh.factory<_i74.HomeCubit>(
      () => _i74.HomeCubit(gh<_i694.StudentRepository>()),
    );
    return this;
  }
}
