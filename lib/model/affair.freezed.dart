// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'affair.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Affair {
  String get id;
  AffairType get type;
  String get title;
  String get description;
  DateTime get dueDate;

  /// Create a copy of Affair
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AffairCopyWith<Affair> get copyWith =>
      _$AffairCopyWithImpl<Affair>(this as Affair, _$identity);

  @override
  bool operator ==(Object other) {
    final _this = this as Affair;
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Affair &&
            (identical(other.id, _this.id) || other.id == _this.id) &&
            (identical(other.type, _this.type) || other.type == _this.type) &&
            (identical(other.title, _this.title) ||
                other.title == _this.title) &&
            (identical(other.description, _this.description) ||
                other.description == _this.description) &&
            (identical(other.dueDate, _this.dueDate) ||
                other.dueDate == _this.dueDate));
  }

  @override
  int get hashCode {
    final _this = this as Affair;
    return Object.hash(runtimeType, _this.id, _this.type, _this.title,
        _this.description, _this.dueDate);
  }

  @override
  String toString() {
    final _this = this as Affair;
    return 'Affair(id: ${_this.id}, type: ${_this.type}, title: ${_this.title}, description: ${_this.description}, dueDate: ${_this.dueDate})';
  }
}

/// @nodoc
abstract mixin class $AffairCopyWith<$Res> {
  factory $AffairCopyWith(Affair value, $Res Function(Affair) _then) =
      _$AffairCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      AffairType type,
      String title,
      String description,
      DateTime dueDate});
}

/// @nodoc
class _$AffairCopyWithImpl<$Res> implements $AffairCopyWith<$Res> {
  _$AffairCopyWithImpl(this._self, this._then);

  final Affair _self;
  final $Res Function(Affair) _then;

  /// Create a copy of Affair
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? title = null,
    Object? description = null,
    Object? dueDate = null,
  }) {
    return _then(Affair(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as AffairType,
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      dueDate: null == dueDate
          ? _self.dueDate
          : dueDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// Adds pattern-matching-related methods to [Affair].
extension AffairPatterns on Affair {
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
    TResult Function(_Affair value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Affair() when $default != null:
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
    TResult Function(_Affair value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Affair():
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
    TResult? Function(_Affair value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Affair() when $default != null:
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
    TResult Function(String id, AffairType type, String title,
            String description, DateTime dueDate)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Affair() when $default != null:
        return $default(_that.id, _that.type, _that.title, _that.description,
            _that.dueDate);
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
    TResult Function(String id, AffairType type, String title,
            String description, DateTime dueDate)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Affair():
        return $default(_that.id, _that.type, _that.title, _that.description,
            _that.dueDate);
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
    TResult? Function(String id, AffairType type, String title,
            String description, DateTime dueDate)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Affair() when $default != null:
        return $default(_that.id, _that.type, _that.title, _that.description,
            _that.dueDate);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _Affair implements Affair {
  const _Affair(
      {required this.id,
      required this.type,
      required this.title,
      required this.description,
      required this.dueDate});

  @override
  final String id;
  @override
  final AffairType type;
  @override
  final String title;
  @override
  final String description;
  @override
  final DateTime dueDate;

  /// Create a copy of Affair
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AffairCopyWith<_Affair> get copyWith =>
      __$AffairCopyWithImpl<_Affair>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Affair &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.dueDate, dueDate) || other.dueDate == dueDate));
  }

  @override
  int get hashCode {
    return Object.hash(runtimeType, id, type, title, description, dueDate);
  }

  @override
  String toString() {
    return 'Affair(id: $id, type: $type, title: $title, description: $description, dueDate: $dueDate)';
  }
}

/// @nodoc
abstract mixin class _$AffairCopyWith<$Res> implements $AffairCopyWith<$Res> {
  factory _$AffairCopyWith(_Affair value, $Res Function(_Affair) _then) =
      __$AffairCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      AffairType type,
      String title,
      String description,
      DateTime dueDate});
}

/// @nodoc
class __$AffairCopyWithImpl<$Res> implements _$AffairCopyWith<$Res> {
  __$AffairCopyWithImpl(this._self, this._then);

  final _Affair _self;
  final $Res Function(_Affair) _then;

  /// Create a copy of Affair
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? title = null,
    Object? description = null,
    Object? dueDate = null,
  }) {
    return _then(_Affair(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as AffairType,
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      dueDate: null == dueDate
          ? _self.dueDate
          : dueDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

// dart format on
