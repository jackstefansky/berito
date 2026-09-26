import 'package:freezed_annotation/freezed_annotation.dart';

part 'student.freezed.dart';

@freezed
abstract class Student with _$Student {
  const factory Student({
    required String id,
    required String firstName,
    required String lastName,
    required String indexNumber,
    required String fieldOfStudy,
    required int semester,
  }) = _Student;

  const Student._();

  String get fullName => '$firstName $lastName';
}
