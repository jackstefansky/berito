import 'package:berito/model/model.dart';
import 'package:injectable/injectable.dart';

import '../student_repository.dart';
import 'mock_data.dart';

@LazySingleton(as: StudentRepository)
class MockStudentRepository implements StudentRepository {
  @override
  Future<Student> getCurrentStudent() async => MockData.student;
}
