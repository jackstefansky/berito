// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'study_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StudyData {
  List<ClassSession> get schedule;
  List<Grade> get grades;

  /// Create a copy of StudyData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StudyDataCopyWith<StudyData> get copyWith =>
      _$StudyDataCopyWithImpl<StudyData>(this as StudyData, _$identity);

  @override
  bool operator ==(Object other) {
    final _this = this as StudyData;
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StudyData &&
            const DeepCollectionEquality()
                .equals(other.schedule, _this.schedule) &&
            const DeepCollectionEquality().equals(other.grades, _this.grades));
  }

  @override
  int get hashCode {
    final _this = this as StudyData;
    return Object.hash(
        runtimeType,
        const DeepCollectionEquality().hash(_this.schedule),
        const DeepCollectionEquality().hash(_this.grades));
  }

  @override
  String toString() {
    final _this = this as StudyData;
    return 'StudyData(schedule: ${_this.schedule}, grades: ${_this.grades})';
  }
}

/// @nodoc
abstract mixin class $StudyDataCopyWith<$Res> {
  factory $StudyDataCopyWith(StudyData value, $Res Function(StudyData) _then) =
      _$StudyDataCopyWithImpl;
  @useResult
  $Res call({List<ClassSession> schedule, List<Grade> grades});
}

/// @nodoc
class _$StudyDataCopyWithImpl<$Res> implements $StudyDataCopyWith<$Res> {
  _$StudyDataCopyWithImpl(this._self, this._then);

  final StudyData _self;
  final $Res Function(StudyData) _then;

  /// Create a copy of StudyData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? schedule = null,
    Object? grades = null,
  }) {
    return _then(StudyData(
      schedule: null == schedule
          ? _self.schedule
          : schedule // ignore: cast_nullable_to_non_nullable
              as List<ClassSession>,
      grades: null == grades
          ? _self.grades
          : grades // ignore: cast_nullable_to_non_nullable
              as List<Grade>,
    ));
  }
}

/// Adds pattern-matching-related methods to [StudyData].
extension StudyDataPatterns on StudyData {
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
    TResult Function(_StudyData value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _StudyData() when $default != null:
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
    TResult Function(_StudyData value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StudyData():
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
    TResult? Function(_StudyData value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StudyData() when $default != null:
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
    TResult Function(List<ClassSession> schedule, List<Grade> grades)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _StudyData() when $default != null:
        return $default(_that.schedule, _that.grades);
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
    TResult Function(List<ClassSession> schedule, List<Grade> grades) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StudyData():
        return $default(_that.schedule, _that.grades);
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
    TResult? Function(List<ClassSession> schedule, List<Grade> grades)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StudyData() when $default != null:
        return $default(_that.schedule, _that.grades);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _StudyData implements StudyData {
  const _StudyData(
      {required List<ClassSession> schedule, required List<Grade> grades})
      : _schedule = schedule,
        _grades = grades;

  final List<ClassSession> _schedule;
  @override
  List<ClassSession> get schedule {
    if (_schedule is EqualUnmodifiableListView) return _schedule;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_schedule);
  }

  final List<Grade> _grades;
  @override
  List<Grade> get grades {
    if (_grades is EqualUnmodifiableListView) return _grades;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_grades);
  }

  /// Create a copy of StudyData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$StudyDataCopyWith<_StudyData> get copyWith =>
      __$StudyDataCopyWithImpl<_StudyData>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StudyData &&
            const DeepCollectionEquality().equals(other.schedule, _schedule) &&
            const DeepCollectionEquality().equals(other.grades, _grades));
  }

  @override
  int get hashCode {
    return Object.hash(
        runtimeType,
        const DeepCollectionEquality().hash(_schedule),
        const DeepCollectionEquality().hash(_grades));
  }

  @override
  String toString() {
    return 'StudyData(schedule: $schedule, grades: $grades)';
  }
}

/// @nodoc
abstract mixin class _$StudyDataCopyWith<$Res>
    implements $StudyDataCopyWith<$Res> {
  factory _$StudyDataCopyWith(
          _StudyData value, $Res Function(_StudyData) _then) =
      __$StudyDataCopyWithImpl;
  @override
  @useResult
  $Res call({List<ClassSession> schedule, List<Grade> grades});
}

/// @nodoc
class __$StudyDataCopyWithImpl<$Res> implements _$StudyDataCopyWith<$Res> {
  __$StudyDataCopyWithImpl(this._self, this._then);

  final _StudyData _self;
  final $Res Function(_StudyData) _then;

  /// Create a copy of StudyData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? schedule = null,
    Object? grades = null,
  }) {
    return _then(_StudyData(
      schedule: null == schedule
          ? _self._schedule
          : schedule // ignore: cast_nullable_to_non_nullable
              as List<ClassSession>,
      grades: null == grades
          ? _self._grades
          : grades // ignore: cast_nullable_to_non_nullable
              as List<Grade>,
    ));
  }
}

// dart format on
