import 'package:berito/model/model.dart';

abstract interface class AssignmentRepository {
  /// Upcoming assignments, nearest due date first.
  Future<List<Assignment>> getAssignments();
}
