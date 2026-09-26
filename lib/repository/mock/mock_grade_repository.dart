import 'package:berito/model/model.dart';
import 'package:injectable/injectable.dart';

import '../grade_repository.dart';

@LazySingleton(as: GradeRepository)
class MockGradeRepository implements GradeRepository {
  @override
  Future<List<Grade>> getGrades() async {
    final now = DateTime.now();
    DateTime daysAgo(int days) => DateTime(now.year, now.month, now.day - days);

    return [
      Grade(
        id: 'gr1',
        courseName: 'Systemy rozproszone',
        value: 5,
        date: daysAgo(4),
        lecturer: 'prof. Piotr Wiśniewski',
      ),
      Grade(
        id: 'gr2',
        courseName: 'Zaawansowane projektowanie aplikacji mobilnych',
        value: 4.5,
        date: daysAgo(9),
        lecturer: 'dr inż. Anna Nowak',
      ),
      Grade(
        id: 'gr3',
        courseName: 'Etyka w informatyce',
        value: 4,
        date: daysAgo(15),
        lecturer: 'dr Katarzyna Zielińska',
      ),
      Grade(
        id: 'gr4',
        courseName: 'Bazy danych',
        value: 3.5,
        date: daysAgo(22),
        lecturer: 'dr hab. Marek Lewandowski',
      ),
      Grade(
        id: 'gr5',
        courseName: 'Analiza matematyczna',
        value: 3,
        date: daysAgo(40),
        lecturer: 'dr Ewa Kamińska',
      ),
      Grade(
        id: 'gr6',
        courseName: 'Fizyka',
        value: 2,
        date: daysAgo(55),
        lecturer: 'prof. Tomasz Wójcik',
      ),
    ];
  }
}
