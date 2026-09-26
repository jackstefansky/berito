import 'package:berito/model/model.dart';

abstract interface class GradeRepository {
  /// Newest first.
  Future<List<Grade>> getGrades();
}
