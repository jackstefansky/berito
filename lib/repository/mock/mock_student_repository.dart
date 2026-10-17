import 'package:berito/core/di/di.dart';
import 'package:berito/model/model.dart';
import 'package:injectable/injectable.dart';

import '../student_repository.dart';
import 'mock_data.dart';

@Environment(AppEnvironment.mock)
@LazySingleton(as: StudentRepository)
class MockStudentRepository implements StudentRepository {
  @override
  Future<Student> getCurrentStudent() async => MockData.student;
}
