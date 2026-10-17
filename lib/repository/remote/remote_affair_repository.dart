import 'package:berito/core/di/di.dart';
import 'package:berito/datasource/datasource.dart';
import 'package:berito/model/model.dart';
import 'package:injectable/injectable.dart';

import '../affair_repository.dart';

@Environment(AppEnvironment.remote)
@LazySingleton(as: AffairRepository)
class RemoteAffairRepository implements AffairRepository {
  RemoteAffairRepository(this._dataSource);

  final AffairRemoteDataSource _dataSource;

  @override
  Future<List<Affair>> getAffairs() => _dataSource.getAffairs();
}
