import 'package:berito/model/model.dart';

abstract interface class ScheduleRepository {
  /// All upcoming classes, soonest first.
  Future<List<ClassSession>> getSchedule();

  /// Throws a `Failure` when there is no class with [id].
  Future<ClassSession> getClass(String id);
}
