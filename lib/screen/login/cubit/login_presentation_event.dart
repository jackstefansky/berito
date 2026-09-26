import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_presentation_event.freezed.dart';

/// One-off side effects of the login screen (not part of its state).
@freezed
sealed class LoginPresentationEvent with _$LoginPresentationEvent {
  const factory LoginPresentationEvent.error(String message) = LoginErrorEvent;
}
