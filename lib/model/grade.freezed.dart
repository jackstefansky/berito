// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'grade.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Grade {
  String get id;
  String get courseName;
  double get value;
  DateTime get date;
  String get lecturer;

  /// Create a copy of Grade
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $GradeCopyWith<Grade> get copyWith =>
      _$GradeCopyWithImpl<Grade>(this as Grade, _$identity);

  @override
  bool operator ==(Object other) {
    final _this = this as Grade;
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Grade &&
            (identical(other.id, _this.id) || other.id == _this.id) &&
            (identical(other.courseName, _this.courseName) ||
                other.courseName == _this.courseName) &&
            (identical(other.value, _this.value) ||
                other.value == _this.value) &&
            (identical(other.date, _this.date) || other.date == _this.date) &&
            (identical(other.lecturer, _this.lecturer) ||
                other.lecturer == _this.lecturer));
  }

  @override
  int get hashCode {
    final _this = this as Grade;
    return Object.hash(runtimeType, _this.id, _this.courseName, _this.value,
        _this.date, _this.lecturer);
  }

  @override
  String toString() {
    final _this = this as Grade;
    return 'Grade(id: ${_this.id}, courseName: ${_this.courseName}, value: ${_this.value}, date: ${_this.date}, lecturer: ${_this.lecturer})';
  }
}

/// @nodoc
abstract mixin class $GradeCopyWith<$Res> {
  factory $GradeCopyWith(Grade value, $Res Function(Grade) _then) =
      _$GradeCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      String courseName,
      double value,
      DateTime date,
      String lecturer});
}

/// @nodoc
class _$GradeCopyWithImpl<$Res> implements $GradeCopyWith<$Res> {
  _$GradeCopyWithImpl(this._self, this._then);

  final Grade _self;
  final $Res Function(Grade) _then;

  /// Create a copy of Grade
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? courseName = null,
    Object? value = null,
    Object? date = null,
    Object? lecturer = null,
  }) {
    return _then(Grade(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      courseName: null == courseName
          ? _self.courseName
          : courseName // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
      date: null == date
          ? _self.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      lecturer: null == lecturer
          ? _self.lecturer
          : lecturer // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [Grade].
extension GradePatterns on Grade {
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
    TResult Function(_Grade value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Grade() when $default != null:
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
    TResult Function(_Grade value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Grade():
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
    TResult? Function(_Grade value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Grade() when $default != null:
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
    TResult Function(String id, String courseName, double value, DateTime date,
            String lecturer)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Grade() when $default != null:
        return $default(_that.id, _that.courseName, _that.value, _that.date,
            _that.lecturer);
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
    TResult Function(String id, String courseName, double value, DateTime date,
            String lecturer)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Grade():
        return $default(_that.id, _that.courseName, _that.value, _that.date,
            _that.lecturer);
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
    TResult? Function(String id, String courseName, double value, DateTime date,
            String lecturer)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Grade() when $default != null:
        return $default(_that.id, _that.courseName, _that.value, _that.date,
            _that.lecturer);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _Grade implements Grade {
  const _Grade(
      {required this.id,
      required this.courseName,
      required this.value,
      required this.date,
      required this.lecturer});

  @override
  final String id;
  @override
  final String courseName;
  @override
  final double value;
  @override
  final DateTime date;
  @override
  final String lecturer;

  /// Create a copy of Grade
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$GradeCopyWith<_Grade> get copyWith =>
      __$GradeCopyWithImpl<_Grade>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Grade &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.courseName, courseName) ||
                other.courseName == courseName) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.lecturer, lecturer) ||
                other.lecturer == lecturer));
  }

  @override
  int get hashCode {
    return Object.hash(runtimeType, id, courseName, value, date, lecturer);
  }

  @override
  String toString() {
    return 'Grade(id: $id, courseName: $courseName, value: $value, date: $date, lecturer: $lecturer)';
  }
}

/// @nodoc
abstract mixin class _$GradeCopyWith<$Res> implements $GradeCopyWith<$Res> {
  factory _$GradeCopyWith(_Grade value, $Res Function(_Grade) _then) =
      __$GradeCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      String courseName,
      double value,
      DateTime date,
      String lecturer});
}

/// @nodoc
class __$GradeCopyWithImpl<$Res> implements _$GradeCopyWith<$Res> {
  __$GradeCopyWithImpl(this._self, this._then);

  final _Grade _self;
  final $Res Function(_Grade) _then;

  /// Create a copy of Grade
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? courseName = null,
    Object? value = null,
    Object? date = null,
    Object? lecturer = null,
  }) {
    return _then(_Grade(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      courseName: null == courseName
          ? _self.courseName
          : courseName // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
      date: null == date
          ? _self.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      lecturer: null == lecturer
          ? _self.lecturer
          : lecturer // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
