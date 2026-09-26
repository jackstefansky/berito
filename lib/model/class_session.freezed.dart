// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'class_session.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ClassSession {
  String get id;
  String get name;
  ClassType get type;
  DateTime get start;
  DateTime get end;
  String get lecturer;
  String? get room;
  String? get meetingUrl;

  /// Create a copy of ClassSession
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ClassSessionCopyWith<ClassSession> get copyWith =>
      _$ClassSessionCopyWithImpl<ClassSession>(
          this as ClassSession, _$identity);

  @override
  bool operator ==(Object other) {
    final _this = this as ClassSession;
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ClassSession &&
            (identical(other.id, _this.id) || other.id == _this.id) &&
            (identical(other.name, _this.name) || other.name == _this.name) &&
            (identical(other.type, _this.type) || other.type == _this.type) &&
            (identical(other.start, _this.start) ||
                other.start == _this.start) &&
            (identical(other.end, _this.end) || other.end == _this.end) &&
            (identical(other.lecturer, _this.lecturer) ||
                other.lecturer == _this.lecturer) &&
            (identical(other.room, _this.room) || other.room == _this.room) &&
            (identical(other.meetingUrl, _this.meetingUrl) ||
                other.meetingUrl == _this.meetingUrl));
  }

  @override
  int get hashCode {
    final _this = this as ClassSession;
    return Object.hash(runtimeType, _this.id, _this.name, _this.type,
        _this.start, _this.end, _this.lecturer, _this.room, _this.meetingUrl);
  }

  @override
  String toString() {
    final _this = this as ClassSession;
    return 'ClassSession(id: ${_this.id}, name: ${_this.name}, type: ${_this.type}, start: ${_this.start}, end: ${_this.end}, lecturer: ${_this.lecturer}, room: ${_this.room}, meetingUrl: ${_this.meetingUrl})';
  }
}

/// @nodoc
abstract mixin class $ClassSessionCopyWith<$Res> {
  factory $ClassSessionCopyWith(
          ClassSession value, $Res Function(ClassSession) _then) =
      _$ClassSessionCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      String name,
      ClassType type,
      DateTime start,
      DateTime end,
      String lecturer,
      String? room,
      String? meetingUrl});
}

/// @nodoc
class _$ClassSessionCopyWithImpl<$Res> implements $ClassSessionCopyWith<$Res> {
  _$ClassSessionCopyWithImpl(this._self, this._then);

  final ClassSession _self;
  final $Res Function(ClassSession) _then;

  /// Create a copy of ClassSession
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? type = null,
    Object? start = null,
    Object? end = null,
    Object? lecturer = null,
    Object? room = freezed,
    Object? meetingUrl = freezed,
  }) {
    return _then(ClassSession(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as ClassType,
      start: null == start
          ? _self.start
          : start // ignore: cast_nullable_to_non_nullable
              as DateTime,
      end: null == end
          ? _self.end
          : end // ignore: cast_nullable_to_non_nullable
              as DateTime,
      lecturer: null == lecturer
          ? _self.lecturer
          : lecturer // ignore: cast_nullable_to_non_nullable
              as String,
      room: freezed == room
          ? _self.room
          : room // ignore: cast_nullable_to_non_nullable
              as String?,
      meetingUrl: freezed == meetingUrl
          ? _self.meetingUrl
          : meetingUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [ClassSession].
extension ClassSessionPatterns on ClassSession {
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
    TResult Function(_ClassSession value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ClassSession() when $default != null:
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
    TResult Function(_ClassSession value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ClassSession():
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
    TResult? Function(_ClassSession value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ClassSession() when $default != null:
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
    TResult Function(String id, String name, ClassType type, DateTime start,
            DateTime end, String lecturer, String? room, String? meetingUrl)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ClassSession() when $default != null:
        return $default(_that.id, _that.name, _that.type, _that.start,
            _that.end, _that.lecturer, _that.room, _that.meetingUrl);
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
    TResult Function(String id, String name, ClassType type, DateTime start,
            DateTime end, String lecturer, String? room, String? meetingUrl)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ClassSession():
        return $default(_that.id, _that.name, _that.type, _that.start,
            _that.end, _that.lecturer, _that.room, _that.meetingUrl);
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
    TResult? Function(String id, String name, ClassType type, DateTime start,
            DateTime end, String lecturer, String? room, String? meetingUrl)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ClassSession() when $default != null:
        return $default(_that.id, _that.name, _that.type, _that.start,
            _that.end, _that.lecturer, _that.room, _that.meetingUrl);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _ClassSession extends ClassSession {
  const _ClassSession(
      {required this.id,
      required this.name,
      required this.type,
      required this.start,
      required this.end,
      required this.lecturer,
      this.room,
      this.meetingUrl})
      : super._();

  @override
  final String id;
  @override
  final String name;
  @override
  final ClassType type;
  @override
  final DateTime start;
  @override
  final DateTime end;
  @override
  final String lecturer;
  @override
  final String? room;
  @override
  final String? meetingUrl;

  /// Create a copy of ClassSession
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ClassSessionCopyWith<_ClassSession> get copyWith =>
      __$ClassSessionCopyWithImpl<_ClassSession>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ClassSession &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.start, start) || other.start == start) &&
            (identical(other.end, end) || other.end == end) &&
            (identical(other.lecturer, lecturer) ||
                other.lecturer == lecturer) &&
            (identical(other.room, room) || other.room == room) &&
            (identical(other.meetingUrl, meetingUrl) ||
                other.meetingUrl == meetingUrl));
  }

  @override
  int get hashCode {
    return Object.hash(
        runtimeType, id, name, type, start, end, lecturer, room, meetingUrl);
  }

  @override
  String toString() {
    return 'ClassSession(id: $id, name: $name, type: $type, start: $start, end: $end, lecturer: $lecturer, room: $room, meetingUrl: $meetingUrl)';
  }
}

/// @nodoc
abstract mixin class _$ClassSessionCopyWith<$Res>
    implements $ClassSessionCopyWith<$Res> {
  factory _$ClassSessionCopyWith(
          _ClassSession value, $Res Function(_ClassSession) _then) =
      __$ClassSessionCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      ClassType type,
      DateTime start,
      DateTime end,
      String lecturer,
      String? room,
      String? meetingUrl});
}

/// @nodoc
class __$ClassSessionCopyWithImpl<$Res>
    implements _$ClassSessionCopyWith<$Res> {
  __$ClassSessionCopyWithImpl(this._self, this._then);

  final _ClassSession _self;
  final $Res Function(_ClassSession) _then;

  /// Create a copy of ClassSession
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? type = null,
    Object? start = null,
    Object? end = null,
    Object? lecturer = null,
    Object? room = freezed,
    Object? meetingUrl = freezed,
  }) {
    return _then(_ClassSession(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as ClassType,
      start: null == start
          ? _self.start
          : start // ignore: cast_nullable_to_non_nullable
              as DateTime,
      end: null == end
          ? _self.end
          : end // ignore: cast_nullable_to_non_nullable
              as DateTime,
      lecturer: null == lecturer
          ? _self.lecturer
          : lecturer // ignore: cast_nullable_to_non_nullable
              as String,
      room: freezed == room
          ? _self.room
          : room // ignore: cast_nullable_to_non_nullable
              as String?,
      meetingUrl: freezed == meetingUrl
          ? _self.meetingUrl
          : meetingUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
