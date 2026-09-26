import 'package:berito/model/model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'study_data.freezed.dart';

/// Everything the "Studia" tab shows.
@freezed
abstract class StudyData with _$StudyData {
  const factory StudyData({
    required List<ClassSession> schedule,
    required List<Grade> grades,
  }) = _StudyData;
}
