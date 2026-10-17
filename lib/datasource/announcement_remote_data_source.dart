import 'package:berito/model/model.dart';
import 'package:injectable/injectable.dart';

import 'api_client.dart';

@lazySingleton
class AnnouncementRemoteDataSource {
  AnnouncementRemoteDataSource(this._api);

  final ApiClient _api;

  Future<List<Announcement>> getAnnouncements() async {
    final json = await _api.getJson('/announcements') as List<dynamic>;
    return [
      for (final item in json.cast<Map<String, dynamic>>())
        Announcement(
          id: item['id'] as String,
          title: item['title'] as String,
          description: item['description'] as String,
          publishedAt: DateTime.parse(item['publishedAt'] as String).toLocal(),
        ),
    ];
  }
}
