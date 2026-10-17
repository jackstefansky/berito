import 'package:berito/core/di/di.dart';
import 'package:berito/datasource/datasource.dart';
import 'package:berito/model/model.dart';
import 'package:injectable/injectable.dart';

import '../schedule_repository.dart';

@Environment(AppEnvironment.remote)
@LazySingleton(as: ScheduleRepository)
class RemoteScheduleRepository implements ScheduleRepository {
  RemoteScheduleRepository(this._dataSource);

  final ScheduleRemoteDataSource _dataSource;

  @override
  Future<List<ClassSession>> getUpcomingClasses() =>
      _dataSource.getUpcomingClasses();

  @override
  Future<List<ClassSession>> getSchedule() => _dataSource.getSchedule();

  @override
  Future<ClassSession> getClass(String id) => _dataSource.getClass(id);
}
