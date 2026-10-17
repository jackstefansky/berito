import 'package:berito/core/di/di.dart';
import 'package:berito/datasource/datasource.dart';
import 'package:berito/model/model.dart';
import 'package:injectable/injectable.dart';

import '../announcement_repository.dart';

@Environment(AppEnvironment.remote)
@LazySingleton(as: AnnouncementRepository)
class RemoteAnnouncementRepository implements AnnouncementRepository {
  RemoteAnnouncementRepository(this._dataSource);

  final AnnouncementRemoteDataSource _dataSource;

  @override
  Future<List<Announcement>> getAnnouncements() =>
      _dataSource.getAnnouncements();
}
