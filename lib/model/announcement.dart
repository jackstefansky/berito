import 'package:freezed_annotation/freezed_annotation.dart';

part 'announcement.freezed.dart';

/// University communication.
@freezed
abstract class Announcement with _$Announcement {
  const factory Announcement({
    required String id,
    required String title,
    required String description,
    required DateTime publishedAt,
  }) = _Announcement;
}
