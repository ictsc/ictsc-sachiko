// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'create_problem_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CreateProblemRequest _$CreateProblemRequestFromJson(Map<String, dynamic> json) {
  return _CreateProblemRequest.fromJson(json);
}

/// @nodoc
class _$CreateProblemRequestTearOff {
  const _$CreateProblemRequestTearOff();

  _CreateProblemRequest call(
      {String id = '',
      required String code,
      required String authorId,
      String title = '',
      String body = '',
      int point = 0,
      int solvedCriterion = 0,
      String? previousProblemId}) {
    return _CreateProblemRequest(
      id: id,
      code: code,
      authorId: authorId,
      title: title,
      body: body,
      point: point,
      solvedCriterion: solvedCriterion,
      previousProblemId: previousProblemId,
    );
  }

  CreateProblemRequest fromJson(Map<String, Object> json) {
    return CreateProblemRequest.fromJson(json);
  }
}

/// @nodoc
const $CreateProblemRequest = _$CreateProblemRequestTearOff();

/// @nodoc
mixin _$CreateProblemRequest {
  String get id => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;
  String get authorId => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get body => throw _privateConstructorUsedError;
  int get point => throw _privateConstructorUsedError;
  int get solvedCriterion => throw _privateConstructorUsedError;
  String? get previousProblemId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateProblemRequestCopyWith<CreateProblemRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateProblemRequestCopyWith<$Res> {
  factory $CreateProblemRequestCopyWith(CreateProblemRequest value,
          $Res Function(CreateProblemRequest) then) =
      _$CreateProblemRequestCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String code,
      String authorId,
      String title,
      String body,
      int point,
      int solvedCriterion,
      String? previousProblemId});
}

/// @nodoc
class _$CreateProblemRequestCopyWithImpl<$Res>
    implements $CreateProblemRequestCopyWith<$Res> {
  _$CreateProblemRequestCopyWithImpl(this._value, this._then);

  final CreateProblemRequest _value;
  // ignore: unused_field
  final $Res Function(CreateProblemRequest) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? code = freezed,
    Object? authorId = freezed,
    Object? title = freezed,
    Object? body = freezed,
    Object? point = freezed,
    Object? solvedCriterion = freezed,
    Object? previousProblemId = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      authorId: authorId == freezed
          ? _value.authorId
          : authorId // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      point: point == freezed
          ? _value.point
          : point // ignore: cast_nullable_to_non_nullable
              as int,
      solvedCriterion: solvedCriterion == freezed
          ? _value.solvedCriterion
          : solvedCriterion // ignore: cast_nullable_to_non_nullable
              as int,
      previousProblemId: previousProblemId == freezed
          ? _value.previousProblemId
          : previousProblemId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$CreateProblemRequestCopyWith<$Res>
    implements $CreateProblemRequestCopyWith<$Res> {
  factory _$CreateProblemRequestCopyWith(_CreateProblemRequest value,
          $Res Function(_CreateProblemRequest) then) =
      __$CreateProblemRequestCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String code,
      String authorId,
      String title,
      String body,
      int point,
      int solvedCriterion,
      String? previousProblemId});
}

/// @nodoc
class __$CreateProblemRequestCopyWithImpl<$Res>
    extends _$CreateProblemRequestCopyWithImpl<$Res>
    implements _$CreateProblemRequestCopyWith<$Res> {
  __$CreateProblemRequestCopyWithImpl(
      _CreateProblemRequest _value, $Res Function(_CreateProblemRequest) _then)
      : super(_value, (v) => _then(v as _CreateProblemRequest));

  @override
  _CreateProblemRequest get _value => super._value as _CreateProblemRequest;

  @override
  $Res call({
    Object? id = freezed,
    Object? code = freezed,
    Object? authorId = freezed,
    Object? title = freezed,
    Object? body = freezed,
    Object? point = freezed,
    Object? solvedCriterion = freezed,
    Object? previousProblemId = freezed,
  }) {
    return _then(_CreateProblemRequest(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      authorId: authorId == freezed
          ? _value.authorId
          : authorId // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      point: point == freezed
          ? _value.point
          : point // ignore: cast_nullable_to_non_nullable
              as int,
      solvedCriterion: solvedCriterion == freezed
          ? _value.solvedCriterion
          : solvedCriterion // ignore: cast_nullable_to_non_nullable
              as int,
      previousProblemId: previousProblemId == freezed
          ? _value.previousProblemId
          : previousProblemId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CreateProblemRequest
    with DiagnosticableTreeMixin
    implements _CreateProblemRequest {
  const _$_CreateProblemRequest(
      {this.id = '',
      required this.code,
      required this.authorId,
      this.title = '',
      this.body = '',
      this.point = 0,
      this.solvedCriterion = 0,
      this.previousProblemId});

  factory _$_CreateProblemRequest.fromJson(Map<String, dynamic> json) =>
      _$_$_CreateProblemRequestFromJson(json);

  @JsonKey(defaultValue: '')
  @override
  final String id;
  @override
  final String code;
  @override
  final String authorId;
  @JsonKey(defaultValue: '')
  @override
  final String title;
  @JsonKey(defaultValue: '')
  @override
  final String body;
  @JsonKey(defaultValue: 0)
  @override
  final int point;
  @JsonKey(defaultValue: 0)
  @override
  final int solvedCriterion;
  @override
  final String? previousProblemId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CreateProblemRequest(id: $id, code: $code, authorId: $authorId, title: $title, body: $body, point: $point, solvedCriterion: $solvedCriterion, previousProblemId: $previousProblemId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CreateProblemRequest'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('code', code))
      ..add(DiagnosticsProperty('authorId', authorId))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('body', body))
      ..add(DiagnosticsProperty('point', point))
      ..add(DiagnosticsProperty('solvedCriterion', solvedCriterion))
      ..add(DiagnosticsProperty('previousProblemId', previousProblemId));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CreateProblemRequest &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.authorId, authorId) ||
                const DeepCollectionEquality()
                    .equals(other.authorId, authorId)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.body, body) ||
                const DeepCollectionEquality().equals(other.body, body)) &&
            (identical(other.point, point) ||
                const DeepCollectionEquality().equals(other.point, point)) &&
            (identical(other.solvedCriterion, solvedCriterion) ||
                const DeepCollectionEquality()
                    .equals(other.solvedCriterion, solvedCriterion)) &&
            (identical(other.previousProblemId, previousProblemId) ||
                const DeepCollectionEquality()
                    .equals(other.previousProblemId, previousProblemId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(authorId) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(body) ^
      const DeepCollectionEquality().hash(point) ^
      const DeepCollectionEquality().hash(solvedCriterion) ^
      const DeepCollectionEquality().hash(previousProblemId);

  @JsonKey(ignore: true)
  @override
  _$CreateProblemRequestCopyWith<_CreateProblemRequest> get copyWith =>
      __$CreateProblemRequestCopyWithImpl<_CreateProblemRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CreateProblemRequestToJson(this);
  }
}

abstract class _CreateProblemRequest implements CreateProblemRequest {
  const factory _CreateProblemRequest(
      {String id,
      required String code,
      required String authorId,
      String title,
      String body,
      int point,
      int solvedCriterion,
      String? previousProblemId}) = _$_CreateProblemRequest;

  factory _CreateProblemRequest.fromJson(Map<String, dynamic> json) =
      _$_CreateProblemRequest.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get code => throw _privateConstructorUsedError;
  @override
  String get authorId => throw _privateConstructorUsedError;
  @override
  String get title => throw _privateConstructorUsedError;
  @override
  String get body => throw _privateConstructorUsedError;
  @override
  int get point => throw _privateConstructorUsedError;
  @override
  int get solvedCriterion => throw _privateConstructorUsedError;
  @override
  String? get previousProblemId => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CreateProblemRequestCopyWith<_CreateProblemRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
