// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'answer.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Answer _$AnswerFromJson(Map<String, dynamic> json) {
  return _Answer.fromJson(json);
}

/// @nodoc
class _$AnswerTearOff {
  const _$AnswerTearOff();

  _Answer call(
      {required String id,
      required int? point,
      required String body,
      required String userGroupId,
      required UserGroup userGroup,
      required String problemId,
      required DateTime updatedAt,
      required DateTime createdAt}) {
    return _Answer(
      id: id,
      point: point,
      body: body,
      userGroupId: userGroupId,
      userGroup: userGroup,
      problemId: problemId,
      updatedAt: updatedAt,
      createdAt: createdAt,
    );
  }

  Answer fromJson(Map<String, Object> json) {
    return Answer.fromJson(json);
  }
}

/// @nodoc
const $Answer = _$AnswerTearOff();

/// @nodoc
mixin _$Answer {
  String get id => throw _privateConstructorUsedError;
  int? get point => throw _privateConstructorUsedError;
  String get body => throw _privateConstructorUsedError;
  String get userGroupId => throw _privateConstructorUsedError;
  UserGroup get userGroup => throw _privateConstructorUsedError;
  String get problemId => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AnswerCopyWith<Answer> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnswerCopyWith<$Res> {
  factory $AnswerCopyWith(Answer value, $Res Function(Answer) then) =
      _$AnswerCopyWithImpl<$Res>;
  $Res call(
      {String id,
      int? point,
      String body,
      String userGroupId,
      UserGroup userGroup,
      String problemId,
      DateTime updatedAt,
      DateTime createdAt});

  $UserGroupCopyWith<$Res> get userGroup;
}

/// @nodoc
class _$AnswerCopyWithImpl<$Res> implements $AnswerCopyWith<$Res> {
  _$AnswerCopyWithImpl(this._value, this._then);

  final Answer _value;
  // ignore: unused_field
  final $Res Function(Answer) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? point = freezed,
    Object? body = freezed,
    Object? userGroupId = freezed,
    Object? userGroup = freezed,
    Object? problemId = freezed,
    Object? updatedAt = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      point: point == freezed
          ? _value.point
          : point // ignore: cast_nullable_to_non_nullable
              as int?,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      userGroupId: userGroupId == freezed
          ? _value.userGroupId
          : userGroupId // ignore: cast_nullable_to_non_nullable
              as String,
      userGroup: userGroup == freezed
          ? _value.userGroup
          : userGroup // ignore: cast_nullable_to_non_nullable
              as UserGroup,
      problemId: problemId == freezed
          ? _value.problemId
          : problemId // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }

  @override
  $UserGroupCopyWith<$Res> get userGroup {
    return $UserGroupCopyWith<$Res>(_value.userGroup, (value) {
      return _then(_value.copyWith(userGroup: value));
    });
  }
}

/// @nodoc
abstract class _$AnswerCopyWith<$Res> implements $AnswerCopyWith<$Res> {
  factory _$AnswerCopyWith(_Answer value, $Res Function(_Answer) then) =
      __$AnswerCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      int? point,
      String body,
      String userGroupId,
      UserGroup userGroup,
      String problemId,
      DateTime updatedAt,
      DateTime createdAt});

  @override
  $UserGroupCopyWith<$Res> get userGroup;
}

/// @nodoc
class __$AnswerCopyWithImpl<$Res> extends _$AnswerCopyWithImpl<$Res>
    implements _$AnswerCopyWith<$Res> {
  __$AnswerCopyWithImpl(_Answer _value, $Res Function(_Answer) _then)
      : super(_value, (v) => _then(v as _Answer));

  @override
  _Answer get _value => super._value as _Answer;

  @override
  $Res call({
    Object? id = freezed,
    Object? point = freezed,
    Object? body = freezed,
    Object? userGroupId = freezed,
    Object? userGroup = freezed,
    Object? problemId = freezed,
    Object? updatedAt = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_Answer(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      point: point == freezed
          ? _value.point
          : point // ignore: cast_nullable_to_non_nullable
              as int?,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      userGroupId: userGroupId == freezed
          ? _value.userGroupId
          : userGroupId // ignore: cast_nullable_to_non_nullable
              as String,
      userGroup: userGroup == freezed
          ? _value.userGroup
          : userGroup // ignore: cast_nullable_to_non_nullable
              as UserGroup,
      problemId: problemId == freezed
          ? _value.problemId
          : problemId // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Answer with DiagnosticableTreeMixin implements _Answer {
  const _$_Answer(
      {required this.id,
      required this.point,
      required this.body,
      required this.userGroupId,
      required this.userGroup,
      required this.problemId,
      required this.updatedAt,
      required this.createdAt});

  factory _$_Answer.fromJson(Map<String, dynamic> json) =>
      _$_$_AnswerFromJson(json);

  @override
  final String id;
  @override
  final int? point;
  @override
  final String body;
  @override
  final String userGroupId;
  @override
  final UserGroup userGroup;
  @override
  final String problemId;
  @override
  final DateTime updatedAt;
  @override
  final DateTime createdAt;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Answer(id: $id, point: $point, body: $body, userGroupId: $userGroupId, userGroup: $userGroup, problemId: $problemId, updatedAt: $updatedAt, createdAt: $createdAt)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Answer'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('point', point))
      ..add(DiagnosticsProperty('body', body))
      ..add(DiagnosticsProperty('userGroupId', userGroupId))
      ..add(DiagnosticsProperty('userGroup', userGroup))
      ..add(DiagnosticsProperty('problemId', problemId))
      ..add(DiagnosticsProperty('updatedAt', updatedAt))
      ..add(DiagnosticsProperty('createdAt', createdAt));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Answer &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.point, point) ||
                const DeepCollectionEquality().equals(other.point, point)) &&
            (identical(other.body, body) ||
                const DeepCollectionEquality().equals(other.body, body)) &&
            (identical(other.userGroupId, userGroupId) ||
                const DeepCollectionEquality()
                    .equals(other.userGroupId, userGroupId)) &&
            (identical(other.userGroup, userGroup) ||
                const DeepCollectionEquality()
                    .equals(other.userGroup, userGroup)) &&
            (identical(other.problemId, problemId) ||
                const DeepCollectionEquality()
                    .equals(other.problemId, problemId)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(point) ^
      const DeepCollectionEquality().hash(body) ^
      const DeepCollectionEquality().hash(userGroupId) ^
      const DeepCollectionEquality().hash(userGroup) ^
      const DeepCollectionEquality().hash(problemId) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(createdAt);

  @JsonKey(ignore: true)
  @override
  _$AnswerCopyWith<_Answer> get copyWith =>
      __$AnswerCopyWithImpl<_Answer>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_AnswerToJson(this);
  }
}

abstract class _Answer implements Answer {
  const factory _Answer(
      {required String id,
      required int? point,
      required String body,
      required String userGroupId,
      required UserGroup userGroup,
      required String problemId,
      required DateTime updatedAt,
      required DateTime createdAt}) = _$_Answer;

  factory _Answer.fromJson(Map<String, dynamic> json) = _$_Answer.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  int? get point => throw _privateConstructorUsedError;
  @override
  String get body => throw _privateConstructorUsedError;
  @override
  String get userGroupId => throw _privateConstructorUsedError;
  @override
  UserGroup get userGroup => throw _privateConstructorUsedError;
  @override
  String get problemId => throw _privateConstructorUsedError;
  @override
  DateTime get updatedAt => throw _privateConstructorUsedError;
  @override
  DateTime get createdAt => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AnswerCopyWith<_Answer> get copyWith => throw _privateConstructorUsedError;
}
