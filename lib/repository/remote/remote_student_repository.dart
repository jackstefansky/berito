import 'package:berito/core/di/di.dart';
import 'package:berito/datasource/datasource.dart';
import 'package:berito/model/model.dart';
import 'package:injectable/injectable.dart';

import '../student_repository.dart';

@Environment(AppEnvironment.remote)
@LazySingleton(as: StudentRepository)
class RemoteStudentRepository implements StudentRepository {
  RemoteStudentRepository(this._dataSource);

  final StudentRemoteDataSource _dataSource;

  @override
  Future<Student> getCurrentStudent() => _dataSource.getCurrentStudent();
}
