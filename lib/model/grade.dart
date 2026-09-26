import 'package:freezed_annotation/freezed_annotation.dart';

part 'grade.freezed.dart';

/// A final grade (2, 3, 3.5, 4, 4.5 or 5) for a course.
@freezed
abstract class Grade with _$Grade {
  const factory Grade({
    required String id,
    required String courseName,
    required double value,
    required DateTime date,
    required String lecturer,
  }) = _Grade;
}
