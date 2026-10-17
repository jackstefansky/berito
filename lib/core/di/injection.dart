import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'app_environment.dart';
import 'injection.config.dart';

final getIt = GetIt.instance;

/// Defaults to the Express server; pass [AppEnvironment.mock] for the mocks.
@InjectableInit()
Future<void> configureDependencies({
  String environment = AppEnvironment.remote,
}) => getIt.init(environment: environment);
