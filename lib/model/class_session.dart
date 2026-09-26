import 'package:freezed_annotation/freezed_annotation.dart';

import 'building.dart';
import 'class_type.dart';

part 'class_session.freezed.dart';

/// A single meeting of a course. Exactly one of [room] (on site) or
/// [meetingUrl] (online) is set.
@freezed
abstract class ClassSession with _$ClassSession {
  const factory ClassSession({
    required String id,
    required String courseId,
    required String name,
    required ClassType type,
    required DateTime start,
    required DateTime end,
    required String lecturer,
    String? room,
    String? meetingUrl,
  }) = _ClassSession;

  const ClassSession._();

  bool get isOnline => meetingUrl != null;

  /// Building taken from the room code, e.g. `B-204` -> [Building.b].
  Building? get building => room == null ? null : Building.fromRoom(room!);
}
