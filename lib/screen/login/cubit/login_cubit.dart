import 'package:berito/core/error/error.dart';
import 'package:berito/repository/repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import 'login_state.dart';

@injectable
class LoginCubit extends Cubit<LoginState> {
  LoginCubit(this._repository) : super(const LoginState.idle());

  final AuthRepository _repository;

  /// On success nothing is emitted here: `AuthCubit` sees the new session
  /// and the router redirects to home.
  Future<void> signIn({required String email, required String password}) async {
    if (email.trim().isEmpty || password.isEmpty) {
      emit(const LoginState.failed('Enter your email and password'));
      return;
    }
    emit(const LoginState.submitting());
    try {
      await _repository.signIn(email: email, password: password);
    } on Failure catch (f) {
      emit(LoginState.failed(f.message));
    } catch (e) {
      emit(LoginState.failed(e.toString()));
    }
  }
}
