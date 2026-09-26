import 'package:berito/model/model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_state.freezed.dart';

@freezed
sealed class AuthState with _$AuthState {
  /// Session is still being restored on app start.
  const factory AuthState.unknown() = AuthUnknown;
  const factory AuthState.authenticated(AuthSession session) =
      AuthAuthenticated;
  const factory AuthState.unauthenticated() = AuthUnauthenticated;
}
