// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'announcement.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Announcement {
  String get id;
  String get title;
  String get description;
  DateTime get publishedAt;

  /// Create a copy of Announcement
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AnnouncementCopyWith<Announcement> get copyWith =>
      _$AnnouncementCopyWithImpl<Announcement>(
          this as Announcement, _$identity);

  @override
  bool operator ==(Object other) {
    final _this = this as Announcement;
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Announcement &&
            (identical(other.id, _this.id) || other.id == _this.id) &&
            (identical(other.title, _this.title) ||
                other.title == _this.title) &&
            (identical(other.description, _this.description) ||
                other.description == _this.description) &&
            (identical(other.publishedAt, _this.publishedAt) ||
                other.publishedAt == _this.publishedAt));
  }

  @override
  int get hashCode {
    final _this = this as Announcement;
    return Object.hash(runtimeType, _this.id, _this.title, _this.description,
        _this.publishedAt);
  }

  @override
  String toString() {
    final _this = this as Announcement;
    return 'Announcement(id: ${_this.id}, title: ${_this.title}, description: ${_this.description}, publishedAt: ${_this.publishedAt})';
  }
}

/// @nodoc
abstract mixin class $AnnouncementCopyWith<$Res> {
  factory $AnnouncementCopyWith(
          Announcement value, $Res Function(Announcement) _then) =
      _$AnnouncementCopyWithImpl;
  @useResult
  $Res call(
      {String id, String title, String description, DateTime publishedAt});
}

/// @nodoc
class _$AnnouncementCopyWithImpl<$Res> implements $AnnouncementCopyWith<$Res> {
  _$AnnouncementCopyWithImpl(this._self, this._then);

  final Announcement _self;
  final $Res Function(Announcement) _then;

  /// Create a copy of Announcement
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? publishedAt = null,
  }) {
    return _then(Announcement(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      publishedAt: null == publishedAt
          ? _self.publishedAt
          : publishedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// Adds pattern-matching-related methods to [Announcement].
extension AnnouncementPatterns on Announcement {
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
    TResult Function(_Announcement value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Announcement() when $default != null:
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
    TResult Function(_Announcement value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Announcement():
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
    TResult? Function(_Announcement value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Announcement() when $default != null:
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
    TResult Function(
            String id, String title, String description, DateTime publishedAt)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Announcement() when $default != null:
        return $default(
            _that.id, _that.title, _that.description, _that.publishedAt);
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
    TResult Function(
            String id, String title, String description, DateTime publishedAt)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Announcement():
        return $default(
            _that.id, _that.title, _that.description, _that.publishedAt);
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
    TResult? Function(
            String id, String title, String description, DateTime publishedAt)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Announcement() when $default != null:
        return $default(
            _that.id, _that.title, _that.description, _that.publishedAt);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _Announcement implements Announcement {
  const _Announcement(
      {required this.id,
      required this.title,
      required this.description,
      required this.publishedAt});

  @override
  final String id;
  @override
  final String title;
  @override
  final String description;
  @override
  final DateTime publishedAt;

  /// Create a copy of Announcement
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AnnouncementCopyWith<_Announcement> get copyWith =>
      __$AnnouncementCopyWithImpl<_Announcement>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Announcement &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.publishedAt, publishedAt) ||
                other.publishedAt == publishedAt));
  }

  @override
  int get hashCode {
    return Object.hash(runtimeType, id, title, description, publishedAt);
  }

  @override
  String toString() {
    return 'Announcement(id: $id, title: $title, description: $description, publishedAt: $publishedAt)';
  }
}

/// @nodoc
abstract mixin class _$AnnouncementCopyWith<$Res>
    implements $AnnouncementCopyWith<$Res> {
  factory _$AnnouncementCopyWith(
          _Announcement value, $Res Function(_Announcement) _then) =
      __$AnnouncementCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id, String title, String description, DateTime publishedAt});
}

/// @nodoc
class __$AnnouncementCopyWithImpl<$Res>
    implements _$AnnouncementCopyWith<$Res> {
  __$AnnouncementCopyWithImpl(this._self, this._then);

  final _Announcement _self;
  final $Res Function(_Announcement) _then;

  /// Create a copy of Announcement
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? publishedAt = null,
  }) {
    return _then(_Announcement(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      publishedAt: null == publishedAt
          ? _self.publishedAt
          : publishedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

// dart format on
