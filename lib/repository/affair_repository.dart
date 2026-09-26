import 'package:berito/model/model.dart';

abstract interface class AffairRepository {
  /// Things the student has to take care of, most urgent first.
  Future<List<Affair>> getAffairs();
}
