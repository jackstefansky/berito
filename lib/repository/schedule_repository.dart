import 'package:berito/model/model.dart';

abstract interface class ScheduleRepository {
  /// The next few classes, soonest first (for the home page).
  Future<List<ClassSession>> getUpcomingClasses();

  /// All upcoming classes, soonest first.
  Future<List<ClassSession>> getSchedule();

  /// Throws a `Failure` when there is no class with [id].
  Future<ClassSession> getClass(String id);
}
