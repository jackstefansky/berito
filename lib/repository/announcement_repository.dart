import 'package:berito/model/model.dart';

abstract interface class AnnouncementRepository {
  /// Newest first.
  Future<List<Announcement>> getAnnouncements();
}
