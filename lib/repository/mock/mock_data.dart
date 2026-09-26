import 'package:berito/model/model.dart';

abstract final class MockData {
  static const email = 'student@berito.app';
  static const password = 'password';

  static const student = Student(
    id: 's1',
    firstName: 'Jan',
    lastName: 'Kowalski',
    indexNumber: '123456',
    fieldOfStudy: 'Computer Science',
    semester: 7,
  );
}
