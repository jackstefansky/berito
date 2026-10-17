import 'package:berito/model/model.dart';
import 'package:injectable/injectable.dart';

import 'api_client.dart';

@lazySingleton
class GradeRemoteDataSource {
  GradeRemoteDataSource(this._api);

  final ApiClient _api;

  Future<List<Grade>> getGrades() async {
    final json = await _api.getJson('/grades') as List<dynamic>;
    return [
      for (final item in json.cast<Map<String, dynamic>>())
        Grade(
          id: item['id'] as String,
          courseName: item['courseName'] as String,
          value: (item['value'] as num).toDouble(),
          date: DateTime.parse(item['date'] as String).toLocal(),
          lecturer: item['lecturer'] as String,
        ),
    ];
  }
}
