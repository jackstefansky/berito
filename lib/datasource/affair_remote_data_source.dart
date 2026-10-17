import 'package:berito/model/model.dart';
import 'package:injectable/injectable.dart';

import 'api_client.dart';

@lazySingleton
class AffairRemoteDataSource {
  AffairRemoteDataSource(this._api);

  final ApiClient _api;

  Future<List<Affair>> getAffairs() async {
    final json = await _api.getJson('/affairs') as List<dynamic>;
    return [
      for (final item in json.cast<Map<String, dynamic>>())
        Affair(
          id: item['id'] as String,
          type: AffairType.values.byName(item['type'] as String),
          title: item['title'] as String,
          description: item['description'] as String,
          dueDate: DateTime.parse(item['dueDate'] as String).toLocal(),
        ),
    ];
  }
}
