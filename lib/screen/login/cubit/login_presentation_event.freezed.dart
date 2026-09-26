// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_presentation_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LoginPresentationEvent {
  String get message;

  /// Create a copy of LoginPresentationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LoginPresentationEventCopyWith<LoginPresentationEvent> get copyWith =>
      _$LoginPresentationEventCopyWithImpl<LoginPresentationEvent>(
          this as LoginPresentationEvent, _$identity);

  @override
  bool operator ==(Object other) {
    final _this = this as LoginPresentationEvent;
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LoginPresentationEvent &&
            (identical(other.message, _this.message) ||
                other.message == _this.message));
  }

  @override
  int get hashCode {
    final _this = this as LoginPresentationEvent;
    return Object.hash(runtimeType, _this.message);
  }

  @override
  String toString() {
    final _this = this as LoginPresentationEvent;
    return 'LoginPresentationEvent(message: ${_this.message})';
  }
}

/// @nodoc
abstract mixin class $LoginPresentationEventCopyWith<$Res> {
  factory $LoginPresentationEventCopyWith(LoginPresentationEvent value,
          $Res Function(LoginPresentationEvent) _then) =
      _$LoginPresentationEventCopyWithImpl;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$LoginPresentationEventCopyWithImpl<$Res>
    implements $LoginPresentationEventCopyWith<$Res> {
  _$LoginPresentationEventCopyWithImpl(this._self, this._then);

  final LoginPresentationEvent _self;
  final $Res Function(LoginPresentationEvent) _then;

  /// Create a copy of LoginPresentationEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(LoginPresentationEvent.error(
      null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [LoginPresentationEvent].
extension LoginPresentationEventPatterns on LoginPresentationEvent {
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
    TResult Function(LoginErrorEvent value)? error,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case LoginErrorEvent() when error != null:
        return error(_that);
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
    required TResult Function(LoginErrorEvent value) error,
  }) {
    final _that = this;
    switch (_that) {
      case LoginErrorEvent():
        return error(_that);
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
    TResult? Function(LoginErrorEvent value)? error,
  }) {
    final _that = this;
    switch (_that) {
      case LoginErrorEvent() when error != null:
        return error(_that);
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
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case LoginErrorEvent() when error != null:
        return error(_that.message);
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
    required TResult Function(String message) error,
  }) {
    final _that = this;
    switch (_that) {
      case LoginErrorEvent():
        return error(_that.message);
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
    TResult? Function(String message)? error,
  }) {
    final _that = this;
    switch (_that) {
      case LoginErrorEvent() when error != null:
        return error(_that.message);
      case _:
        return null;
    }
  }
}

/// @nodoc

class LoginErrorEvent implements LoginPresentationEvent {
  const LoginErrorEvent(this.message);

  @override
  final String message;

  /// Create a copy of LoginPresentationEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LoginErrorEventCopyWith<LoginErrorEvent> get copyWith =>
      _$LoginErrorEventCopyWithImpl<LoginErrorEvent>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LoginErrorEvent &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode {
    return Object.hash(runtimeType, message);
  }

  @override
  String toString() {
    return 'LoginPresentationEvent.error(message: $message)';
  }
}

/// @nodoc
abstract mixin class $LoginErrorEventCopyWith<$Res>
    implements $LoginPresentationEventCopyWith<$Res> {
  factory $LoginErrorEventCopyWith(
          LoginErrorEvent value, $Res Function(LoginErrorEvent) _then) =
      _$LoginErrorEventCopyWithImpl;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$LoginErrorEventCopyWithImpl<$Res>
    implements $LoginErrorEventCopyWith<$Res> {
  _$LoginErrorEventCopyWithImpl(this._self, this._then);

  final LoginErrorEvent _self;
  final $Res Function(LoginErrorEvent) _then;

  /// Create a copy of LoginPresentationEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = null,
  }) {
    return _then(LoginErrorEvent(
      null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
