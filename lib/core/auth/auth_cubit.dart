import 'dart:async';

import 'package:berito/model/model.dart';
import 'package:berito/repository/repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import 'auth_state.dart';

/// App-wide source of truth for whether to show the login page or home.
@lazySingleton
class AuthCubit extends Cubit<AuthState> {
  AuthCubit(this._repository) : super(const AuthState.unknown()) {
    _init();
  }

  final AuthRepository _repository;
  StreamSubscription<AuthSession?>? _subscription;

  Future<void> _init() async {
    _emitSession(await _repository.restoreSession());
    _subscription = _repository.sessionChanges.listen(_emitSession);
  }

  void _emitSession(AuthSession? session) {
    emit(
      session == null
          ? const AuthState.unauthenticated()
          : AuthState.authenticated(session),
    );
  }

  Future<void> signOut() => _repository.signOut();

  @override
  Future<void> close() {
    _subscription?.cancel();
    return super.close();
  }
}
