import 'package:berito/model/model.dart';

abstract interface class AuthRepository {
  /// The current session if the user is already logged in, otherwise null.
  /// Called once on app start to decide between the login page and home.
  Future<AuthSession?> restoreSession();

  /// Emits on every login and logout.
  Stream<AuthSession?> get sessionChanges;

  /// Throws a `Failure` when the credentials are rejected.
  Future<AuthSession> signIn({required String email, required String password});

  Future<void> signOut();
}
