import 'dart:async';

import 'package:berito/core/error/error.dart';
import 'package:berito/model/model.dart';
import 'package:injectable/injectable.dart';

import '../auth_repository.dart';
import 'mock_data.dart';

/// In-memory auth: every app launch starts logged out.
/// Demo credentials: [MockData.email] / [MockData.password].
@LazySingleton(as: AuthRepository)
class MockAuthRepository implements AuthRepository {
  final _controller = StreamController<AuthSession?>.broadcast();
  AuthSession? _session;

  @override
  Future<AuthSession?> restoreSession() async => _session;

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
    final session =
        AuthSession(userId: MockData.student.id, email: email.trim());
    _session = session;
    _controller.add(session);
    return session;
  }

  @override
  Future<void> signOut() async {
    _session = null;
    _controller.add(null);
  }
}
