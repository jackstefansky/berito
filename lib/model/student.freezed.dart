// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'student.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Student {
  String get id;
  String get firstName;
  String get lastName;
  String get indexNumber;
  String get fieldOfStudy;
  int get semester;

  /// Create a copy of Student
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StudentCopyWith<Student> get copyWith =>
      _$StudentCopyWithImpl<Student>(this as Student, _$identity);

  @override
  bool operator ==(Object other) {
    final _this = this as Student;
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Student &&
            (identical(other.id, _this.id) || other.id == _this.id) &&
            (identical(other.firstName, _this.firstName) ||
                other.firstName == _this.firstName) &&
            (identical(other.lastName, _this.lastName) ||
                other.lastName == _this.lastName) &&
            (identical(other.indexNumber, _this.indexNumber) ||
                other.indexNumber == _this.indexNumber) &&
            (identical(other.fieldOfStudy, _this.fieldOfStudy) ||
                other.fieldOfStudy == _this.fieldOfStudy) &&
            (identical(other.semester, _this.semester) ||
                other.semester == _this.semester));
  }

  @override
  int get hashCode {
    final _this = this as Student;
    return Object.hash(runtimeType, _this.id, _this.firstName, _this.lastName,
        _this.indexNumber, _this.fieldOfStudy, _this.semester);
  }

  @override
  String toString() {
    final _this = this as Student;
    return 'Student(id: ${_this.id}, firstName: ${_this.firstName}, lastName: ${_this.lastName}, indexNumber: ${_this.indexNumber}, fieldOfStudy: ${_this.fieldOfStudy}, semester: ${_this.semester})';
  }
}

/// @nodoc
abstract mixin class $StudentCopyWith<$Res> {
  factory $StudentCopyWith(Student value, $Res Function(Student) _then) =
      _$StudentCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      String firstName,
      String lastName,
      String indexNumber,
      String fieldOfStudy,
      int semester});
}

/// @nodoc
class _$StudentCopyWithImpl<$Res> implements $StudentCopyWith<$Res> {
  _$StudentCopyWithImpl(this._self, this._then);

  final Student _self;
  final $Res Function(Student) _then;

  /// Create a copy of Student
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? indexNumber = null,
    Object? fieldOfStudy = null,
    Object? semester = null,
  }) {
    return _then(Student(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _self.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _self.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      indexNumber: null == indexNumber
          ? _self.indexNumber
          : indexNumber // ignore: cast_nullable_to_non_nullable
              as String,
      fieldOfStudy: null == fieldOfStudy
          ? _self.fieldOfStudy
          : fieldOfStudy // ignore: cast_nullable_to_non_nullable
              as String,
      semester: null == semester
          ? _self.semester
          : semester // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// Adds pattern-matching-related methods to [Student].
extension StudentPatterns on Student {
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
    TResult Function(_Student value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Student() when $default != null:
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
    TResult Function(_Student value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Student():
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
    TResult? Function(_Student value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Student() when $default != null:
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
    TResult Function(String id, String firstName, String lastName,
            String indexNumber, String fieldOfStudy, int semester)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Student() when $default != null:
        return $default(_that.id, _that.firstName, _that.lastName,
            _that.indexNumber, _that.fieldOfStudy, _that.semester);
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
    TResult Function(String id, String firstName, String lastName,
            String indexNumber, String fieldOfStudy, int semester)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Student():
        return $default(_that.id, _that.firstName, _that.lastName,
            _that.indexNumber, _that.fieldOfStudy, _that.semester);
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
    TResult? Function(String id, String firstName, String lastName,
            String indexNumber, String fieldOfStudy, int semester)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Student() when $default != null:
        return $default(_that.id, _that.firstName, _that.lastName,
            _that.indexNumber, _that.fieldOfStudy, _that.semester);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _Student extends Student {
  const _Student(
      {required this.id,
      required this.firstName,
      required this.lastName,
      required this.indexNumber,
      required this.fieldOfStudy,
      required this.semester})
      : super._();

  @override
  final String id;
  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String indexNumber;
  @override
  final String fieldOfStudy;
  @override
  final int semester;

  /// Create a copy of Student
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$StudentCopyWith<_Student> get copyWith =>
      __$StudentCopyWithImpl<_Student>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Student &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.indexNumber, indexNumber) ||
                other.indexNumber == indexNumber) &&
            (identical(other.fieldOfStudy, fieldOfStudy) ||
                other.fieldOfStudy == fieldOfStudy) &&
            (identical(other.semester, semester) ||
                other.semester == semester));
  }

  @override
  int get hashCode {
    return Object.hash(runtimeType, id, firstName, lastName, indexNumber,
        fieldOfStudy, semester);
  }

  @override
  String toString() {
    return 'Student(id: $id, firstName: $firstName, lastName: $lastName, indexNumber: $indexNumber, fieldOfStudy: $fieldOfStudy, semester: $semester)';
  }
}

/// @nodoc
abstract mixin class _$StudentCopyWith<$Res> implements $StudentCopyWith<$Res> {
  factory _$StudentCopyWith(_Student value, $Res Function(_Student) _then) =
      __$StudentCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      String firstName,
      String lastName,
      String indexNumber,
      String fieldOfStudy,
      int semester});
}

/// @nodoc
class __$StudentCopyWithImpl<$Res> implements _$StudentCopyWith<$Res> {
  __$StudentCopyWithImpl(this._self, this._then);

  final _Student _self;
  final $Res Function(_Student) _then;

  /// Create a copy of Student
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? indexNumber = null,
    Object? fieldOfStudy = null,
    Object? semester = null,
  }) {
    return _then(_Student(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _self.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _self.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      indexNumber: null == indexNumber
          ? _self.indexNumber
          : indexNumber // ignore: cast_nullable_to_non_nullable
              as String,
      fieldOfStudy: null == fieldOfStudy
          ? _self.fieldOfStudy
          : fieldOfStudy // ignore: cast_nullable_to_non_nullable
              as String,
      semester: null == semester
          ? _self.semester
          : semester // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

// dart format on
