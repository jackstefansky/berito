import 'package:freezed_annotation/freezed_annotation.dart';

import 'affair_type.dart';

part 'affair.freezed.dart';

/// Something the student has to take care of ("moja sprawa").
@freezed
abstract class Affair with _$Affair {
  const factory Affair({
    required String id,
    required AffairType type,
    required String title,
    required String description,
    required DateTime dueDate,
  }) = _Affair;
}
