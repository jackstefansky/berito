// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'class_detail_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ClassDetailData {
  ClassSession get session;
  List<Assignment> get assignments;

  /// Create a copy of ClassDetailData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ClassDetailDataCopyWith<ClassDetailData> get copyWith =>
      _$ClassDetailDataCopyWithImpl<ClassDetailData>(
          this as ClassDetailData, _$identity);

  @override
  bool operator ==(Object other) {
    final _this = this as ClassDetailData;
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ClassDetailData &&
            (identical(other.session, _this.session) ||
                other.session == _this.session) &&
            const DeepCollectionEquality()
                .equals(other.assignments, _this.assignments));
  }

  @override
  int get hashCode {
    final _this = this as ClassDetailData;
    return Object.hash(runtimeType, _this.session,
        const DeepCollectionEquality().hash(_this.assignments));
  }

  @override
  String toString() {
    final _this = this as ClassDetailData;
    return 'ClassDetailData(session: ${_this.session}, assignments: ${_this.assignments})';
  }
}

/// @nodoc
abstract mixin class $ClassDetailDataCopyWith<$Res> {
  factory $ClassDetailDataCopyWith(
          ClassDetailData value, $Res Function(ClassDetailData) _then) =
      _$ClassDetailDataCopyWithImpl;
  @useResult
  $Res call({ClassSession session, List<Assignment> assignments});

  $ClassSessionCopyWith<$Res> get session;
}

/// @nodoc
class _$ClassDetailDataCopyWithImpl<$Res>
    implements $ClassDetailDataCopyWith<$Res> {
  _$ClassDetailDataCopyWithImpl(this._self, this._then);

  final ClassDetailData _self;
  final $Res Function(ClassDetailData) _then;

  /// Create a copy of ClassDetailData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? session = null,
    Object? assignments = null,
  }) {
    return _then(ClassDetailData(
      session: null == session
          ? _self.session
          : session // ignore: cast_nullable_to_non_nullable
              as ClassSession,
      assignments: null == assignments
          ? _self.assignments
          : assignments // ignore: cast_nullable_to_non_nullable
              as List<Assignment>,
    ));
  }

  /// Create a copy of ClassDetailData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ClassSessionCopyWith<$Res> get session {
    return $ClassSessionCopyWith<$Res>(_self.session, (value) {
      return _then(_self.copyWith(session: value));
    });
  }
}

/// Adds pattern-matching-related methods to [ClassDetailData].
extension ClassDetailDataPatterns on ClassDetailData {
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
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ClassDetailData value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ClassDetailData() when $default != null:
        return $default(_that);
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
  TResult map<TResult extends Object?>(
    TResult Function(_ClassDetailData value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ClassDetailData():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
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
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_ClassDetailData value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ClassDetailData() when $default != null:
        return $default(_that);
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
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(ClassSession session, List<Assignment> assignments)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ClassDetailData() when $default != null:
        return $default(_that.session, _that.assignments);
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
  TResult when<TResult extends Object?>(
    TResult Function(ClassSession session, List<Assignment> assignments)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ClassDetailData():
        return $default(_that.session, _that.assignments);
      case _:
        throw StateError('Unexpected subclass');
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
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(ClassSession session, List<Assignment> assignments)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ClassDetailData() when $default != null:
        return $default(_that.session, _that.assignments);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _ClassDetailData implements ClassDetailData {
  const _ClassDetailData(
      {required this.session, required List<Assignment> assignments})
      : _assignments = assignments;

  @override
  final ClassSession session;
  final List<Assignment> _assignments;
  @override
  List<Assignment> get assignments {
    if (_assignments is EqualUnmodifiableListView) return _assignments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_assignments);
  }

  /// Create a copy of ClassDetailData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ClassDetailDataCopyWith<_ClassDetailData> get copyWith =>
      __$ClassDetailDataCopyWithImpl<_ClassDetailData>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ClassDetailData &&
            (identical(other.session, session) || other.session == session) &&
            const DeepCollectionEquality()
                .equals(other.assignments, _assignments));
  }

  @override
  int get hashCode {
    return Object.hash(runtimeType, session,
        const DeepCollectionEquality().hash(_assignments));
  }

  @override
  String toString() {
    return 'ClassDetailData(session: $session, assignments: $assignments)';
  }
}

/// @nodoc
abstract mixin class _$ClassDetailDataCopyWith<$Res>
    implements $ClassDetailDataCopyWith<$Res> {
  factory _$ClassDetailDataCopyWith(
          _ClassDetailData value, $Res Function(_ClassDetailData) _then) =
      __$ClassDetailDataCopyWithImpl;
  @override
  @useResult
  $Res call({ClassSession session, List<Assignment> assignments});

  @override
  $ClassSessionCopyWith<$Res> get session;
}

/// @nodoc
class __$ClassDetailDataCopyWithImpl<$Res>
    implements _$ClassDetailDataCopyWith<$Res> {
  __$ClassDetailDataCopyWithImpl(this._self, this._then);

  final _ClassDetailData _self;
  final $Res Function(_ClassDetailData) _then;

  /// Create a copy of ClassDetailData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? session = null,
    Object? assignments = null,
  }) {
    return _then(_ClassDetailData(
      session: null == session
          ? _self.session
          : session // ignore: cast_nullable_to_non_nullable
              as ClassSession,
      assignments: null == assignments
          ? _self._assignments
          : assignments // ignore: cast_nullable_to_non_nullable
              as List<Assignment>,
    ));
  }

  /// Create a copy of ClassDetailData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ClassSessionCopyWith<$Res> get session {
    return $ClassSessionCopyWith<$Res>(_self.session, (value) {
      return _then(_self.copyWith(session: value));
    });
  }
}

// dart format on
