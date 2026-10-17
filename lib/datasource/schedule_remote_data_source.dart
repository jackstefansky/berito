import 'package:berito/model/model.dart';
import 'package:injectable/injectable.dart';

import 'api_client.dart';

@lazySingleton
class ScheduleRemoteDataSource {
  ScheduleRemoteDataSource(this._api);

  final ApiClient _api;

  Future<List<ClassSession>> getUpcomingClasses() =>
      _fetchList('/schedule/upcoming');

  Future<List<ClassSession>> getSchedule() => _fetchList('/schedule');

  Future<ClassSession> getClass(String id) async {
    final json = await _api.getJson(
      '/schedule/${Uri.encodeComponent(id)}',
      notFoundMessage: 'Nie znaleziono zajęć',
    ) as Map<String, dynamic>;
    return _parse(json);
  }

  Future<List<ClassSession>> _fetchList(String path) async {
    final json = await _api.getJson(path) as List<dynamic>;
    return json.cast<Map<String, dynamic>>().map(_parse).toList();
  }

  ClassSession _parse(Map<String, dynamic> json) => ClassSession(
    id: json['id'] as String,
    courseId: json['courseId'] as String,
    name: json['name'] as String,
    type: ClassType.values.byName(json['type'] as String),
    start: DateTime.parse(json['start'] as String).toLocal(),
    end: DateTime.parse(json['end'] as String).toLocal(),
    lecturer: json['lecturer'] as String,
    room: json['room'] as String?,
    meetingUrl: json['meetingUrl'] as String?,
  );
}
