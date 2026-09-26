import 'dart:async';

import 'package:berito/core/error/error.dart';
import 'package:berito/model/model.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../auth_repository.dart';
import 'mock_data.dart';

/// Mock auth that keeps the session on the device (unencrypted
/// SharedPreferences) so the user stays signed in across app restarts.
/// Supabase manages its own session persistence, so this is mock-only.
/// Demo credentials: [MockData.email] / [MockData.password].
@LazySingleton(as: AuthRepository)
class MockAuthRepository implements AuthRepository {
  MockAuthRepository(this._prefs);

  static const _userIdKey = 'auth.userId';
  static const _emailKey = 'auth.email';

  final SharedPreferences _prefs;
  final _controller = StreamController<AuthSession?>.broadcast();

  @override
  Future<AuthSession?> restoreSession() async {
    final userId = _prefs.getString(_userIdKey);
    final email = _prefs.getString(_emailKey);
    if (userId == null || email == null) return null;
    return AuthSession(userId: userId, email: email);
  }

  @override
  Stream<AuthSession?> get sessionChanges => _controller.stream;

  @override
  Future<AuthSession> signIn({
    required String email,
    required String password,
  }) async {
    await Future<void>.delayed(const Duration(milliseconds: 600));
    if (email.trim() != MockData.email || password != MockData.password) {
      throw const Failure('Nieprawidłowy email lub hasło');
    }
    final session = AuthSession(
      userId: MockData.student.id,
      email: email.trim(),
    );
    await _prefs.setString(_userIdKey, session.userId);
    await _prefs.setString(_emailKey, session.email);
    _controller.add(session);
    return session;
  }

  @override
  Future<void> signOut() async {
    await _prefs.remove(_userIdKey);
    await _prefs.remove(_emailKey);
    _controller.add(null);
  }
}
