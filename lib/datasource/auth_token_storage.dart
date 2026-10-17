import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// Holds the server-issued session token (unencrypted SharedPreferences).
@lazySingleton
class AuthTokenStorage {
  AuthTokenStorage(this._prefs);

  static const _tokenKey = 'auth.token';

  final SharedPreferences _prefs;

  String? get token => _prefs.getString(_tokenKey);

  Future<void> save(String token) => _prefs.setString(_tokenKey, token);

  Future<void> clear() => _prefs.remove(_tokenKey);
}
