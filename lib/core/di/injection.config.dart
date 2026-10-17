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
import 'package:berito/core/di/app_module.dart' as _i343;
import 'package:berito/core/router/app_router.dart' as _i564;
import 'package:berito/datasource/affair_remote_data_source.dart' as _i938;
import 'package:berito/datasource/announcement_remote_data_source.dart'
    as _i869;
import 'package:berito/datasource/api_client.dart' as _i419;
import 'package:berito/datasource/assignment_remote_data_source.dart' as _i304;
import 'package:berito/datasource/auth_remote_data_source.dart' as _i736;
import 'package:berito/datasource/auth_token_storage.dart' as _i853;
import 'package:berito/datasource/datasource.dart' as _i318;
import 'package:berito/datasource/grade_remote_data_source.dart' as _i426;
import 'package:berito/datasource/schedule_remote_data_source.dart' as _i839;
import 'package:berito/datasource/student_remote_data_source.dart' as _i91;
import 'package:berito/repository/affair_repository.dart' as _i150;
import 'package:berito/repository/announcement_repository.dart' as _i529;
import 'package:berito/repository/assignment_repository.dart' as _i1045;
import 'package:berito/repository/auth_repository.dart' as _i670;
import 'package:berito/repository/grade_repository.dart' as _i910;
import 'package:berito/repository/mock/mock_affair_repository.dart' as _i337;
import 'package:berito/repository/mock/mock_announcement_repository.dart'
    as _i315;
import 'package:berito/repository/mock/mock_assignment_repository.dart'
    as _i468;
import 'package:berito/repository/mock/mock_auth_repository.dart' as _i821;
import 'package:berito/repository/mock/mock_grade_repository.dart' as _i630;
import 'package:berito/repository/mock/mock_schedule_repository.dart' as _i845;
import 'package:berito/repository/mock/mock_student_repository.dart' as _i253;
import 'package:berito/repository/remote/remote_affair_repository.dart'
    as _i881;
import 'package:berito/repository/remote/remote_announcement_repository.dart'
    as _i445;
import 'package:berito/repository/remote/remote_assignment_repository.dart'
    as _i831;
import 'package:berito/repository/remote/remote_auth_repository.dart' as _i948;
import 'package:berito/repository/remote/remote_grade_repository.dart' as _i166;
import 'package:berito/repository/remote/remote_schedule_repository.dart'
    as _i335;
import 'package:berito/repository/remote/remote_student_repository.dart'
    as _i71;
import 'package:berito/repository/repository.dart' as _i694;
import 'package:berito/repository/schedule_repository.dart' as _i1034;
import 'package:berito/repository/student_repository.dart' as _i709;
import 'package:berito/screen/affair/cubit/affair_cubit.dart' as _i802;
import 'package:berito/screen/announcement/cubit/announcement_cubit.dart'
    as _i214;
import 'package:berito/screen/assignment/cubit/assignment_cubit.dart' as _i862;
import 'package:berito/screen/class_detail/cubit/class_detail_cubit.dart'
    as _i822;
import 'package:berito/screen/home/cubit/home_cubit.dart' as _i74;
import 'package:berito/screen/login/cubit/login_cubit.dart' as _i287;
import 'package:berito/screen/study/cubit/study_cubit.dart' as _i1015;
import 'package:get_it/get_it.dart' as _i174;
import 'package:http/http.dart' as _i519;
import 'package:injectable/injectable.dart' as _i526;
import 'package:shared_preferences/shared_preferences.dart' as _i460;

const String _mock = 'mock';
const String _remote = 'remote';

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final appModule = _$AppModule();
    await gh.factoryAsync<_i460.SharedPreferences>(
      () => appModule.sharedPreferences,
      preResolve: true,
    );
    gh.lazySingleton<_i519.Client>(() => appModule.httpClient);
    gh.lazySingleton<_i910.GradeRepository>(
      () => _i630.MockGradeRepository(),
      registerFor: {_mock},
    );
    gh.lazySingleton<_i1034.ScheduleRepository>(
      () => _i845.MockScheduleRepository(),
      registerFor: {_mock},
    );
    gh.lazySingleton<_i1045.AssignmentRepository>(
      () => _i468.MockAssignmentRepository(),
      registerFor: {_mock},
    );
    gh.lazySingleton<_i150.AffairRepository>(
      () => _i337.MockAffairRepository(),
      registerFor: {_mock},
    );
    gh.lazySingleton<_i709.StudentRepository>(
      () => _i253.MockStudentRepository(),
      registerFor: {_mock},
    );
    gh.lazySingleton<_i529.AnnouncementRepository>(
      () => _i315.MockAnnouncementRepository(),
      registerFor: {_mock},
    );
    gh.lazySingleton<_i853.AuthTokenStorage>(
      () => _i853.AuthTokenStorage(gh<_i460.SharedPreferences>()),
    );
    gh.lazySingleton<_i670.AuthRepository>(
      () => _i821.MockAuthRepository(gh<_i460.SharedPreferences>()),
      registerFor: {_mock},
    );
    gh.lazySingleton<_i419.ApiClient>(
      () => _i419.ApiClient(gh<_i519.Client>(), gh<_i853.AuthTokenStorage>()),
    );
    gh.lazySingleton<_i736.AuthRemoteDataSource>(
      () =>
          _i736.AuthRemoteDataSource(gh<_i519.Client>(), gh<_i419.ApiClient>()),
    );
    gh.lazySingleton<_i670.AuthRepository>(
      () => _i948.RemoteAuthRepository(
        gh<_i318.AuthRemoteDataSource>(),
        gh<_i318.AuthTokenStorage>(),
        gh<_i460.SharedPreferences>(),
      ),
      registerFor: {_remote},
    );
    gh.lazySingleton<_i938.AffairRemoteDataSource>(
      () => _i938.AffairRemoteDataSource(gh<_i419.ApiClient>()),
    );
    gh.lazySingleton<_i869.AnnouncementRemoteDataSource>(
      () => _i869.AnnouncementRemoteDataSource(gh<_i419.ApiClient>()),
    );
    gh.lazySingleton<_i304.AssignmentRemoteDataSource>(
      () => _i304.AssignmentRemoteDataSource(gh<_i419.ApiClient>()),
    );
    gh.lazySingleton<_i426.GradeRemoteDataSource>(
      () => _i426.GradeRemoteDataSource(gh<_i419.ApiClient>()),
    );
    gh.lazySingleton<_i839.ScheduleRemoteDataSource>(
      () => _i839.ScheduleRemoteDataSource(gh<_i419.ApiClient>()),
    );
    gh.lazySingleton<_i91.StudentRemoteDataSource>(
      () => _i91.StudentRemoteDataSource(gh<_i419.ApiClient>()),
    );
    gh.lazySingleton<_i150.AffairRepository>(
      () => _i881.RemoteAffairRepository(gh<_i318.AffairRemoteDataSource>()),
      registerFor: {_remote},
    );
    gh.lazySingleton<_i529.AnnouncementRepository>(
      () => _i445.RemoteAnnouncementRepository(
        gh<_i318.AnnouncementRemoteDataSource>(),
      ),
      registerFor: {_remote},
    );
    gh.lazySingleton<_i1034.ScheduleRepository>(
      () =>
          _i335.RemoteScheduleRepository(gh<_i318.ScheduleRemoteDataSource>()),
      registerFor: {_remote},
    );
    gh.lazySingleton<_i709.StudentRepository>(
      () => _i71.RemoteStudentRepository(gh<_i318.StudentRemoteDataSource>()),
      registerFor: {_remote},
    );
    gh.lazySingleton<_i422.AuthCubit>(
      () => _i422.AuthCubit(gh<_i694.AuthRepository>()),
    );
    gh.factory<_i287.LoginCubit>(
      () => _i287.LoginCubit(gh<_i694.AuthRepository>()),
    );
    gh.lazySingleton<_i1045.AssignmentRepository>(
      () => _i831.RemoteAssignmentRepository(
        gh<_i318.AssignmentRemoteDataSource>(),
      ),
      registerFor: {_remote},
    );
    gh.lazySingleton<_i564.AppRouter>(
      () => _i564.AppRouter(gh<_i755.AuthCubit>()),
    );
    gh.factory<_i862.AssignmentCubit>(
      () => _i862.AssignmentCubit(gh<_i694.AssignmentRepository>()),
    );
    gh.factory<_i802.AffairCubit>(
      () => _i802.AffairCubit(gh<_i694.AffairRepository>()),
    );
    gh.lazySingleton<_i910.GradeRepository>(
      () => _i166.RemoteGradeRepository(gh<_i318.GradeRemoteDataSource>()),
      registerFor: {_remote},
    );
    gh.factory<_i214.AnnouncementCubit>(
      () => _i214.AnnouncementCubit(gh<_i694.AnnouncementRepository>()),
    );
    gh.factory<_i1015.StudyCubit>(
      () => _i1015.StudyCubit(
        gh<_i694.ScheduleRepository>(),
        gh<_i694.GradeRepository>(),
      ),
    );
    gh.factoryParam<_i822.ClassDetailCubit, String, dynamic>(
      (classId, _) => _i822.ClassDetailCubit(
        gh<_i694.ScheduleRepository>(),
        gh<_i694.AssignmentRepository>(),
        classId,
      ),
    );
    gh.factory<_i74.HomeCubit>(
      () => _i74.HomeCubit(
        gh<_i694.StudentRepository>(),
        gh<_i694.ScheduleRepository>(),
        gh<_i694.AffairRepository>(),
        gh<_i694.AnnouncementRepository>(),
      ),
    );
    return this;
  }
}

class _$AppModule extends _i343.AppModule {}
