import 'package:berito/model/model.dart';
import 'package:injectable/injectable.dart';

import '../assignment_repository.dart';

/// Stub data relative to "now" so the assignments are always upcoming.
@LazySingleton(as: AssignmentRepository)
class MockAssignmentRepository implements AssignmentRepository {
  @override
  Future<List<Assignment>> getAssignments() async {
    final now = DateTime.now();
    DateTime due(int days, [int hour = 23, int minute = 59]) =>
        DateTime(now.year, now.month, now.day + days, hour, minute);

    return [
      Assignment(
        id: 'as1',
        title: 'Aplikacja mobilna – etap 2',
        courseName: 'Zaawansowane projektowanie aplikacji mobilnych',
        type: AssignmentType.project,
        dueDate: due(2),
      ),
      Assignment(
        id: 'as2',
        title: 'Zadanie 4: replikacja danych',
        courseName: 'Systemy rozproszone',
        type: AssignmentType.task,
        dueDate: due(4, 18, 0),
      ),
      Assignment(
        id: 'as3',
        title: 'Kolokwium z normalizacji',
        courseName: 'Bazy danych',
        type: AssignmentType.quiz,
        dueDate: due(6, 12, 0),
      ),
      Assignment(
        id: 'as4',
        title: 'Sprawozdanie z laboratorium 3',
        courseName: 'Bazy danych',
        type: AssignmentType.report,
        dueDate: due(9),
      ),
      Assignment(
        id: 'as5',
        title: 'Projekt zespołowy – prototyp',
        courseName: 'Systemy rozproszone',
        type: AssignmentType.project,
        dueDate: due(16),
      ),
      Assignment(
        id: 'as6',
        title: 'Esej: odpowiedzialność inżyniera',
        courseName: 'Etyka w informatyce',
        type: AssignmentType.report,
        dueDate: due(21),
      ),
    ];
  }
}
