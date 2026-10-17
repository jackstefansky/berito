import 'package:berito/core/di/di.dart';
import 'package:berito/datasource/datasource.dart';
import 'package:berito/model/model.dart';
import 'package:injectable/injectable.dart';

import '../grade_repository.dart';

@Environment(AppEnvironment.remote)
@LazySingleton(as: GradeRepository)
class RemoteGradeRepository implements GradeRepository {
  RemoteGradeRepository(this._dataSource);

  final GradeRemoteDataSource _dataSource;

  @override
  Future<List<Grade>> getGrades() => _dataSource.getGrades();
}
