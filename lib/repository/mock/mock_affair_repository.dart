import 'package:berito/model/model.dart';
import 'package:injectable/injectable.dart';

import '../affair_repository.dart';

@LazySingleton(as: AffairRepository)
class MockAffairRepository implements AffairRepository {
  @override
  Future<List<Affair>> getAffairs() async {
    final now = DateTime.now();
    DateTime inDays(int days) =>
        DateTime(now.year, now.month, now.day + days, 23, 59);

    return [
      Affair(
        id: 'af1',
        type: AffairType.assignment,
        title: 'Termin oddania projektu',
        description: 'Aplikacja mobilna – etap 2',
        dueDate: inDays(2),
      ),
      Affair(
        id: 'af2',
        type: AffairType.exam,
        title: 'Nadchodzący egzamin',
        description: 'Systemy rozproszone – sala B-204',
        dueDate: inDays(9),
      ),
      Affair(
        id: 'af3',
        type: AffairType.payment,
        title: 'Opłata za studia',
        description: 'Czesne za semestr zimowy – 1 200 zł',
        dueDate: inDays(14),
      ),
    ];
  }
}
