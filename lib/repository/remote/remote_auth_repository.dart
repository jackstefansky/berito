import 'dart:async';

import 'package:berito/core/di/di.dart';
import 'package:berito/core/error/error.dart';
import 'package:berito/datasource/datasource.dart';
import 'package:berito/model/model.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../auth_repository.dart';

/// Auth against the Express server. The server-issued token and the session
/// are kept in (unencrypted) SharedPreferences so the user stays signed in.
@Environment(AppEnvironment.remote)
@LazySingleton(as: AuthRepository)
class RemoteAuthRepository implements AuthRepository {
  RemoteAuthRepository(this._dataSource, this._prefs);

  static const _tokenKey = 'auth.token';
  static const _userIdKey = 'auth.userId';
  static const _emailKey = 'auth.email';

  final AuthRemoteDataSource _dataSource;
  final SharedPreferences _prefs;
  final _controller = StreamController<AuthSession?>.broadcast();

  @override
  Future<AuthSession?> restoreSession() async {
    final token = _prefs.getString(_tokenKey);
    if (token == null) return null;
    try {
      final session = await _dataSource.fetchSession(token);
      if (session == null) {
        await _clear();
        return null;
      }
      return session;
    } on Failure {
      // Server unreachable: trust the cached session instead of logging out.
      final userId = _prefs.getString(_userIdKey);
      final email = _prefs.getString(_emailKey);
      if (userId == null || email == null) return null;
      return AuthSession(userId: userId, email: email);
    }
  }

  @override
  Stream<AuthSession?> get sessionChanges => _controller.stream;

  @override
  Future<AuthSession> signIn({
    required String email,
    required String password,
  }) async {
    final result = await _dataSource.login(
      email: email.trim(),
      password: password,
    );
    await _prefs.setString(_tokenKey, result.token);
    await _prefs.setString(_userIdKey, result.session.userId);
    await _prefs.setString(_emailKey, result.session.email);
    _controller.add(result.session);
    return result.session;
  }

  @override
  Future<void> signOut() async {
    final token = _prefs.getString(_tokenKey);
    await _clear();
    _controller.add(null);
    if (token != null) {
      try {
        await _dataSource.logout(token);
      } on Failure {
        // Already signed out locally; the server session is best-effort.
      }
    }
  }

  Future<void> _clear() async {
    await _prefs.remove(_tokenKey);
    await _prefs.remove(_userIdKey);
    await _prefs.remove(_emailKey);
  }
}
