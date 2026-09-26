// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$HomeData {
  Student get student;
  List<ClassSession> get upcomingClasses;
  List<Affair> get affairs;
  List<Announcement> get announcements;

  /// Create a copy of HomeData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $HomeDataCopyWith<HomeData> get copyWith =>
      _$HomeDataCopyWithImpl<HomeData>(this as HomeData, _$identity);

  @override
  bool operator ==(Object other) {
    final _this = this as HomeData;
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is HomeData &&
            (identical(other.student, _this.student) ||
                other.student == _this.student) &&
            const DeepCollectionEquality()
                .equals(other.upcomingClasses, _this.upcomingClasses) &&
            const DeepCollectionEquality()
                .equals(other.affairs, _this.affairs) &&
            const DeepCollectionEquality()
                .equals(other.announcements, _this.announcements));
  }

  @override
  int get hashCode {
    final _this = this as HomeData;
    return Object.hash(
        runtimeType,
        _this.student,
        const DeepCollectionEquality().hash(_this.upcomingClasses),
        const DeepCollectionEquality().hash(_this.affairs),
        const DeepCollectionEquality().hash(_this.announcements));
  }

  @override
  String toString() {
    final _this = this as HomeData;
    return 'HomeData(student: ${_this.student}, upcomingClasses: ${_this.upcomingClasses}, affairs: ${_this.affairs}, announcements: ${_this.announcements})';
  }
}

/// @nodoc
abstract mixin class $HomeDataCopyWith<$Res> {
  factory $HomeDataCopyWith(HomeData value, $Res Function(HomeData) _then) =
      _$HomeDataCopyWithImpl;
  @useResult
  $Res call(
      {Student student,
      List<ClassSession> upcomingClasses,
      List<Affair> affairs,
      List<Announcement> announcements});

  $StudentCopyWith<$Res> get student;
}

/// @nodoc
class _$HomeDataCopyWithImpl<$Res> implements $HomeDataCopyWith<$Res> {
  _$HomeDataCopyWithImpl(this._self, this._then);

  final HomeData _self;
  final $Res Function(HomeData) _then;

  /// Create a copy of HomeData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? student = null,
    Object? upcomingClasses = null,
    Object? affairs = null,
    Object? announcements = null,
  }) {
    return _then(HomeData(
      student: null == student
          ? _self.student
          : student // ignore: cast_nullable_to_non_nullable
              as Student,
      upcomingClasses: null == upcomingClasses
          ? _self.upcomingClasses
          : upcomingClasses // ignore: cast_nullable_to_non_nullable
              as List<ClassSession>,
      affairs: null == affairs
          ? _self.affairs
          : affairs // ignore: cast_nullable_to_non_nullable
              as List<Affair>,
      announcements: null == announcements
          ? _self.announcements
          : announcements // ignore: cast_nullable_to_non_nullable
              as List<Announcement>,
    ));
  }

  /// Create a copy of HomeData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StudentCopyWith<$Res> get student {
    return $StudentCopyWith<$Res>(_self.student, (value) {
      return _then(_self.copyWith(student: value));
    });
  }
}

/// Adds pattern-matching-related methods to [HomeData].
extension HomeDataPatterns on HomeData {
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
    TResult Function(_HomeData value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _HomeData() when $default != null:
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
    TResult Function(_HomeData value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _HomeData():
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
    TResult? Function(_HomeData value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _HomeData() when $default != null:
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
    TResult Function(Student student, List<ClassSession> upcomingClasses,
            List<Affair> affairs, List<Announcement> announcements)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _HomeData() when $default != null:
        return $default(_that.student, _that.upcomingClasses, _that.affairs,
            _that.announcements);
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
    TResult Function(Student student, List<ClassSession> upcomingClasses,
            List<Affair> affairs, List<Announcement> announcements)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _HomeData():
        return $default(_that.student, _that.upcomingClasses, _that.affairs,
            _that.announcements);
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
    TResult? Function(Student student, List<ClassSession> upcomingClasses,
            List<Affair> affairs, List<Announcement> announcements)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _HomeData() when $default != null:
        return $default(_that.student, _that.upcomingClasses, _that.affairs,
            _that.announcements);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _HomeData implements HomeData {
  const _HomeData(
      {required this.student,
      required List<ClassSession> upcomingClasses,
      required List<Affair> affairs,
      required List<Announcement> announcements})
      : _upcomingClasses = upcomingClasses,
        _affairs = affairs,
        _announcements = announcements;

  @override
  final Student student;
  final List<ClassSession> _upcomingClasses;
  @override
  List<ClassSession> get upcomingClasses {
    if (_upcomingClasses is EqualUnmodifiableListView) return _upcomingClasses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_upcomingClasses);
  }

  final List<Affair> _affairs;
  @override
  List<Affair> get affairs {
    if (_affairs is EqualUnmodifiableListView) return _affairs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_affairs);
  }

  final List<Announcement> _announcements;
  @override
  List<Announcement> get announcements {
    if (_announcements is EqualUnmodifiableListView) return _announcements;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_announcements);
  }

  /// Create a copy of HomeData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$HomeDataCopyWith<_HomeData> get copyWith =>
      __$HomeDataCopyWithImpl<_HomeData>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _HomeData &&
            (identical(other.student, student) || other.student == student) &&
            const DeepCollectionEquality()
                .equals(other.upcomingClasses, _upcomingClasses) &&
            const DeepCollectionEquality().equals(other.affairs, _affairs) &&
            const DeepCollectionEquality()
                .equals(other.announcements, _announcements));
  }

  @override
  int get hashCode {
    return Object.hash(
        runtimeType,
        student,
        const DeepCollectionEquality().hash(_upcomingClasses),
        const DeepCollectionEquality().hash(_affairs),
        const DeepCollectionEquality().hash(_announcements));
  }

  @override
  String toString() {
    return 'HomeData(student: $student, upcomingClasses: $upcomingClasses, affairs: $affairs, announcements: $announcements)';
  }
}

/// @nodoc
abstract mixin class _$HomeDataCopyWith<$Res>
    implements $HomeDataCopyWith<$Res> {
  factory _$HomeDataCopyWith(_HomeData value, $Res Function(_HomeData) _then) =
      __$HomeDataCopyWithImpl;
  @override
  @useResult
  $Res call(
      {Student student,
      List<ClassSession> upcomingClasses,
      List<Affair> affairs,
      List<Announcement> announcements});

  @override
  $StudentCopyWith<$Res> get student;
}

/// @nodoc
class __$HomeDataCopyWithImpl<$Res> implements _$HomeDataCopyWith<$Res> {
  __$HomeDataCopyWithImpl(this._self, this._then);

  final _HomeData _self;
  final $Res Function(_HomeData) _then;

  /// Create a copy of HomeData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? student = null,
    Object? upcomingClasses = null,
    Object? affairs = null,
    Object? announcements = null,
  }) {
    return _then(_HomeData(
      student: null == student
          ? _self.student
          : student // ignore: cast_nullable_to_non_nullable
              as Student,
      upcomingClasses: null == upcomingClasses
          ? _self._upcomingClasses
          : upcomingClasses // ignore: cast_nullable_to_non_nullable
              as List<ClassSession>,
      affairs: null == affairs
          ? _self._affairs
          : affairs // ignore: cast_nullable_to_non_nullable
              as List<Affair>,
      announcements: null == announcements
          ? _self._announcements
          : announcements // ignore: cast_nullable_to_non_nullable
              as List<Announcement>,
    ));
  }

  /// Create a copy of HomeData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StudentCopyWith<$Res> get student {
    return $StudentCopyWith<$Res>(_self.student, (value) {
      return _then(_self.copyWith(student: value));
    });
  }
}

// dart format on
