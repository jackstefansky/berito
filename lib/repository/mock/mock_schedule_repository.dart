import 'package:berito/core/error/error.dart';
import 'package:berito/model/model.dart';
import 'package:injectable/injectable.dart';

import '../schedule_repository.dart';

/// Stub data relative to "now" so the classes are always upcoming.
@LazySingleton(as: ScheduleRepository)
class MockScheduleRepository implements ScheduleRepository {
  @override
  Future<List<ClassSession>> getUpcomingClasses() async =>
      (await getSchedule()).take(3).toList();

  @override
  Future<ClassSession> getClass(String id) async {
    final all = await getSchedule();
    return all.firstWhere(
      (c) => c.id == id,
      orElse: () => throw const Failure('Nie znaleziono zajęć'),
    );
  }

  @override
  Future<List<ClassSession>> getSchedule() async {
    final now = DateTime.now();
    DateTime at(int days, int hour, [int minute = 0]) =>
        DateTime(now.year, now.month, now.day + days, hour, minute);

    return [
      ClassSession(
        id: 'cl1',
        courseId: 'course-mobile',
        name: 'Zaawansowane projektowanie aplikacji mobilnych',
        type: ClassType.laboratory,
        start: at(1, 8),
        end: at(1, 9, 30),
        lecturer: 'dr inż. Anna Nowak',
        room: 'B-204',
      ),
      ClassSession(
        id: 'cl2',
        courseId: 'course-distributed',
        name: 'Systemy rozproszone',
        type: ClassType.lecture,
        start: at(1, 10),
        end: at(1, 11, 30),
        lecturer: 'prof. Piotr Wiśniewski',
        meetingUrl: 'https://teams.microsoft.com/l/meetup-join/berito-sr',
      ),
      ClassSession(
        id: 'cl3',
        courseId: 'course-ethics',
        name: 'Etyka w informatyce',
        type: ClassType.conversatory,
        start: at(2, 12),
        end: at(2, 13, 30),
        lecturer: 'dr Katarzyna Zielińska',
        room: 'A-101',
      ),
      ClassSession(
        id: 'cl4',
        courseId: 'course-db',
        name: 'Bazy danych',
        type: ClassType.lecture,
        start: at(3, 9),
        end: at(3, 10, 30),
        lecturer: 'dr hab. Marek Lewandowski',
        room: 'C-12',
      ),
      ClassSession(
        id: 'cl5',
        courseId: 'course-db',
        name: 'Bazy danych',
        type: ClassType.laboratory,
        start: at(3, 11),
        end: at(3, 12, 30),
        lecturer: 'dr hab. Marek Lewandowski',
        room: 'C-14',
      ),
      ClassSession(
        id: 'cl6',
        courseId: 'course-distributed',
        name: 'Systemy rozproszone',
        type: ClassType.laboratory,
        start: at(4, 14),
        end: at(4, 15, 30),
        lecturer: 'mgr inż. Jan Szymański',
        meetingUrl: 'https://teams.microsoft.com/l/meetup-join/berito-sr-lab',
      ),
      ClassSession(
        id: 'cl7',
        courseId: 'course-ethics',
        name: 'Etyka w informatyce',
        type: ClassType.lecture,
        start: at(6, 10),
        end: at(6, 11, 30),
        lecturer: 'dr Katarzyna Zielińska',
        room: 'A-101',
      ),
    ];
  }
}
