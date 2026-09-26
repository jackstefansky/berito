import 'package:berito/model/model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_data.freezed.dart';

/// Everything the "Dziś" tab shows.
@freezed
abstract class HomeData with _$HomeData {
  const factory HomeData({
    required Student student,
    required List<ClassSession> upcomingClasses,
    required List<Affair> affairs,
    required List<Announcement> announcements,
  }) = _HomeData;
}
