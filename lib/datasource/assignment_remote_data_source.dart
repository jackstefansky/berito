import 'package:berito/model/model.dart';
import 'package:injectable/injectable.dart';

import 'api_client.dart';

@lazySingleton
class AssignmentRemoteDataSource {
  AssignmentRemoteDataSource(this._api);

  final ApiClient _api;

  Future<List<Assignment>> getAssignments() => _fetch('/assignments');

  Future<List<Assignment>> getAssignmentsForCourse(String courseId) =>
      _fetch('/courses/${Uri.encodeComponent(courseId)}/assignments');

  Future<List<Assignment>> _fetch(String path) async {
    final json = await _api.getJson(path) as List<dynamic>;
    return [
      for (final item in json.cast<Map<String, dynamic>>())
        Assignment(
          id: item['id'] as String,
          courseId: item['courseId'] as String,
          title: item['title'] as String,
          courseName: item['courseName'] as String,
          type: AssignmentType.values.byName(item['type'] as String),
          dueDate: DateTime.parse(item['dueDate'] as String).toLocal(),
        ),
    ];
  }
}
