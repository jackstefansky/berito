import 'package:berito/core/error/error.dart';
import 'package:berito/repository/repository.dart';
import 'package:bloc_presentation/bloc_presentation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import 'login_presentation_event.dart';
import 'login_state.dart';

@injectable
class LoginCubit extends Cubit<LoginState>
    with BlocPresentationMixin<LoginState, LoginPresentationEvent> {
  LoginCubit(this._repository) : super(const LoginState.idle());

  final AuthRepository _repository;

  /// On success nothing is emitted here: `AuthCubit` sees the new session
  /// and the router redirects to home. Failures are emitted as
  /// [LoginErrorEvent] presentation events.
  Future<void> signIn({required String email, required String password}) async {
    if (email.trim().isEmpty || password.isEmpty) {
      emitPresentation(const LoginPresentationEvent.error(
        'Podaj email i hasło',
      ));
      return;
    }
    emit(const LoginState.submitting());
    try {
      await _repository.signIn(email: email, password: password);
    } on Failure catch (f) {
      emitPresentation(LoginPresentationEvent.error(f.message));
    } catch (e) {
      emitPresentation(LoginPresentationEvent.error(e.toString()));
    } finally {
      if (!isClosed) emit(const LoginState.idle());
    }
  }
}
