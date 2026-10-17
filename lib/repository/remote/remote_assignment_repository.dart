import 'package:berito/core/di/di.dart';
import 'package:berito/datasource/datasource.dart';
import 'package:berito/model/model.dart';
import 'package:injectable/injectable.dart';

import '../assignment_repository.dart';

@Environment(AppEnvironment.remote)
@LazySingleton(as: AssignmentRepository)
class RemoteAssignmentRepository implements AssignmentRepository {
  RemoteAssignmentRepository(this._dataSource);

  final AssignmentRemoteDataSource _dataSource;

  @override
  Future<List<Assignment>> getAssignments() => _dataSource.getAssignments();

  @override
  Future<List<Assignment>> getAssignmentsForCourse(String courseId) =>
      _dataSource.getAssignmentsForCourse(courseId);
}
