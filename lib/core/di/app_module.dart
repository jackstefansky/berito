import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// Third-party dependencies that can't be annotated directly.
@module
abstract class AppModule {
  @preResolve
  Future<SharedPreferences> get sharedPreferences =>
      SharedPreferences.getInstance();
}
