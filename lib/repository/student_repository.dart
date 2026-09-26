import 'package:berito/model/model.dart';

abstract interface class StudentRepository {
  Future<Student> getCurrentStudent();
}
