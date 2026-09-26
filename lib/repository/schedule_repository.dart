import 'package:berito/model/model.dart';

abstract interface class ScheduleRepository {
  /// Classes starting soonest first.
  Future<List<ClassSession>> getUpcomingClasses();
}
