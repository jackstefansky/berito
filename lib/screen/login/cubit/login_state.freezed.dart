// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LoginState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is LoginState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'LoginState()';
  }
}

/// @nodoc
class $LoginStateCopyWith<$Res> {
  $LoginStateCopyWith(LoginState _, $Res Function(LoginState) __);
}

/// Adds pattern-matching-related methods to [LoginState].
extension LoginStatePatterns on LoginState {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginIdle value)? idle,
    TResult Function(LoginSubmitting value)? submitting,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case LoginIdle() when idle != null:
        return idle(_that);
      case LoginSubmitting() when submitting != null:
        return submitting(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginIdle value) idle,
    required TResult Function(LoginSubmitting value) submitting,
  }) {
    final _that = this;
    switch (_that) {
      case LoginIdle():
        return idle(_that);
      case LoginSubmitting():
        return submitting(_that);
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginIdle value)? idle,
    TResult? Function(LoginSubmitting value)? submitting,
  }) {
    final _that = this;
    switch (_that) {
      case LoginIdle() when idle != null:
        return idle(_that);
      case LoginSubmitting() when submitting != null:
        return submitting(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? submitting,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case LoginIdle() when idle != null:
        return idle();
      case LoginSubmitting() when submitting != null:
        return submitting();
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() submitting,
  }) {
    final _that = this;
    switch (_that) {
      case LoginIdle():
        return idle();
      case LoginSubmitting():
        return submitting();
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? submitting,
  }) {
    final _that = this;
    switch (_that) {
      case LoginIdle() when idle != null:
        return idle();
      case LoginSubmitting() when submitting != null:
        return submitting();
      case _:
        return null;
    }
  }
}

/// @nodoc

class LoginIdle implements LoginState {
  const LoginIdle();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is LoginIdle);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'LoginState.idle()';
  }
}

/// @nodoc

class LoginSubmitting implements LoginState {
  const LoginSubmitting();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is LoginSubmitting);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'LoginState.submitting()';
  }
}

// dart format on
