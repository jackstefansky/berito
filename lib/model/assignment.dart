import 'package:freezed_annotation/freezed_annotation.dart';

import 'assignment_type.dart';

part 'assignment.freezed.dart';

/// A graded piece of work with a due date: project, task, report, quiz.
@freezed
abstract class Assignment with _$Assignment {
  const factory Assignment({
    required String id,
    required String title,
    required String courseName,
    required AssignmentType type,
    required DateTime dueDate,
  }) = _Assignment;
}
