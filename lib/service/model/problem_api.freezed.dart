// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'problem_api.dart';

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

CreateProblemResponse _$CreateProblemResponseFromJson(
    Map<String, dynamic> json) {
  return _CreateProblemResponse.fromJson(json);
}

/// @nodoc
class _$CreateProblemResponseTearOff {
  const _$CreateProblemResponseTearOff();

  _CreateProblemResponse call(
      {required int code, required CreateProblemResponseData data}) {
    return _CreateProblemResponse(
      code: code,
      data: data,
    );
  }

  CreateProblemResponse fromJson(Map<String, Object> json) {
    return CreateProblemResponse.fromJson(json);
  }
}

/// @nodoc
const $CreateProblemResponse = _$CreateProblemResponseTearOff();

/// @nodoc
mixin _$CreateProblemResponse {
  int get code => throw _privateConstructorUsedError;
  CreateProblemResponseData get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateProblemResponseCopyWith<CreateProblemResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateProblemResponseCopyWith<$Res> {
  factory $CreateProblemResponseCopyWith(CreateProblemResponse value,
          $Res Function(CreateProblemResponse) then) =
      _$CreateProblemResponseCopyWithImpl<$Res>;
  $Res call({int code, CreateProblemResponseData data});

  $CreateProblemResponseDataCopyWith<$Res> get data;
}

/// @nodoc
class _$CreateProblemResponseCopyWithImpl<$Res>
    implements $CreateProblemResponseCopyWith<$Res> {
  _$CreateProblemResponseCopyWithImpl(this._value, this._then);

  final CreateProblemResponse _value;
  // ignore: unused_field
  final $Res Function(CreateProblemResponse) _then;

  @override
  $Res call({
    Object? code = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CreateProblemResponseData,
    ));
  }

  @override
  $CreateProblemResponseDataCopyWith<$Res> get data {
    return $CreateProblemResponseDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
abstract class _$CreateProblemResponseCopyWith<$Res>
    implements $CreateProblemResponseCopyWith<$Res> {
  factory _$CreateProblemResponseCopyWith(_CreateProblemResponse value,
          $Res Function(_CreateProblemResponse) then) =
      __$CreateProblemResponseCopyWithImpl<$Res>;
  @override
  $Res call({int code, CreateProblemResponseData data});

  @override
  $CreateProblemResponseDataCopyWith<$Res> get data;
}

/// @nodoc
class __$CreateProblemResponseCopyWithImpl<$Res>
    extends _$CreateProblemResponseCopyWithImpl<$Res>
    implements _$CreateProblemResponseCopyWith<$Res> {
  __$CreateProblemResponseCopyWithImpl(_CreateProblemResponse _value,
      $Res Function(_CreateProblemResponse) _then)
      : super(_value, (v) => _then(v as _CreateProblemResponse));

  @override
  _CreateProblemResponse get _value => super._value as _CreateProblemResponse;

  @override
  $Res call({
    Object? code = freezed,
    Object? data = freezed,
  }) {
    return _then(_CreateProblemResponse(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CreateProblemResponseData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CreateProblemResponse
    with DiagnosticableTreeMixin
    implements _CreateProblemResponse {
  const _$_CreateProblemResponse({required this.code, required this.data});

  factory _$_CreateProblemResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_CreateProblemResponseFromJson(json);

  @override
  final int code;
  @override
  final CreateProblemResponseData data;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CreateProblemResponse(code: $code, data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CreateProblemResponse'))
      ..add(DiagnosticsProperty('code', code))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CreateProblemResponse &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  _$CreateProblemResponseCopyWith<_CreateProblemResponse> get copyWith =>
      __$CreateProblemResponseCopyWithImpl<_CreateProblemResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CreateProblemResponseToJson(this);
  }
}

abstract class _CreateProblemResponse implements CreateProblemResponse {
  const factory _CreateProblemResponse(
      {required int code,
      required CreateProblemResponseData data}) = _$_CreateProblemResponse;

  factory _CreateProblemResponse.fromJson(Map<String, dynamic> json) =
      _$_CreateProblemResponse.fromJson;

  @override
  int get code => throw _privateConstructorUsedError;
  @override
  CreateProblemResponseData get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CreateProblemResponseCopyWith<_CreateProblemResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

CreateProblemResponseData _$CreateProblemResponseDataFromJson(
    Map<String, dynamic> json) {
  return _CreateProblemResponseData.fromJson(json);
}

/// @nodoc
class _$CreateProblemResponseDataTearOff {
  const _$CreateProblemResponseDataTearOff();

  _CreateProblemResponseData call({required Problem problem}) {
    return _CreateProblemResponseData(
      problem: problem,
    );
  }

  CreateProblemResponseData fromJson(Map<String, Object> json) {
    return CreateProblemResponseData.fromJson(json);
  }
}

/// @nodoc
const $CreateProblemResponseData = _$CreateProblemResponseDataTearOff();

/// @nodoc
mixin _$CreateProblemResponseData {
  Problem get problem => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateProblemResponseDataCopyWith<CreateProblemResponseData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateProblemResponseDataCopyWith<$Res> {
  factory $CreateProblemResponseDataCopyWith(CreateProblemResponseData value,
          $Res Function(CreateProblemResponseData) then) =
      _$CreateProblemResponseDataCopyWithImpl<$Res>;
  $Res call({Problem problem});

  $ProblemCopyWith<$Res> get problem;
}

/// @nodoc
class _$CreateProblemResponseDataCopyWithImpl<$Res>
    implements $CreateProblemResponseDataCopyWith<$Res> {
  _$CreateProblemResponseDataCopyWithImpl(this._value, this._then);

  final CreateProblemResponseData _value;
  // ignore: unused_field
  final $Res Function(CreateProblemResponseData) _then;

  @override
  $Res call({
    Object? problem = freezed,
  }) {
    return _then(_value.copyWith(
      problem: problem == freezed
          ? _value.problem
          : problem // ignore: cast_nullable_to_non_nullable
              as Problem,
    ));
  }

  @override
  $ProblemCopyWith<$Res> get problem {
    return $ProblemCopyWith<$Res>(_value.problem, (value) {
      return _then(_value.copyWith(problem: value));
    });
  }
}

/// @nodoc
abstract class _$CreateProblemResponseDataCopyWith<$Res>
    implements $CreateProblemResponseDataCopyWith<$Res> {
  factory _$CreateProblemResponseDataCopyWith(_CreateProblemResponseData value,
          $Res Function(_CreateProblemResponseData) then) =
      __$CreateProblemResponseDataCopyWithImpl<$Res>;
  @override
  $Res call({Problem problem});

  @override
  $ProblemCopyWith<$Res> get problem;
}

/// @nodoc
class __$CreateProblemResponseDataCopyWithImpl<$Res>
    extends _$CreateProblemResponseDataCopyWithImpl<$Res>
    implements _$CreateProblemResponseDataCopyWith<$Res> {
  __$CreateProblemResponseDataCopyWithImpl(_CreateProblemResponseData _value,
      $Res Function(_CreateProblemResponseData) _then)
      : super(_value, (v) => _then(v as _CreateProblemResponseData));

  @override
  _CreateProblemResponseData get _value =>
      super._value as _CreateProblemResponseData;

  @override
  $Res call({
    Object? problem = freezed,
  }) {
    return _then(_CreateProblemResponseData(
      problem: problem == freezed
          ? _value.problem
          : problem // ignore: cast_nullable_to_non_nullable
              as Problem,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CreateProblemResponseData
    with DiagnosticableTreeMixin
    implements _CreateProblemResponseData {
  const _$_CreateProblemResponseData({required this.problem});

  factory _$_CreateProblemResponseData.fromJson(Map<String, dynamic> json) =>
      _$_$_CreateProblemResponseDataFromJson(json);

  @override
  final Problem problem;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CreateProblemResponseData(problem: $problem)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CreateProblemResponseData'))
      ..add(DiagnosticsProperty('problem', problem));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CreateProblemResponseData &&
            (identical(other.problem, problem) ||
                const DeepCollectionEquality().equals(other.problem, problem)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(problem);

  @JsonKey(ignore: true)
  @override
  _$CreateProblemResponseDataCopyWith<_CreateProblemResponseData>
      get copyWith =>
          __$CreateProblemResponseDataCopyWithImpl<_CreateProblemResponseData>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CreateProblemResponseDataToJson(this);
  }
}

abstract class _CreateProblemResponseData implements CreateProblemResponseData {
  const factory _CreateProblemResponseData({required Problem problem}) =
      _$_CreateProblemResponseData;

  factory _CreateProblemResponseData.fromJson(Map<String, dynamic> json) =
      _$_CreateProblemResponseData.fromJson;

  @override
  Problem get problem => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CreateProblemResponseDataCopyWith<_CreateProblemResponseData>
      get copyWith => throw _privateConstructorUsedError;
}

DeleteProblemRequest _$DeleteProblemRequestFromJson(Map<String, dynamic> json) {
  return _DeleteProblemRequest.fromJson(json);
}

/// @nodoc
class _$DeleteProblemRequestTearOff {
  const _$DeleteProblemRequestTearOff();

  _DeleteProblemRequest call({required String id}) {
    return _DeleteProblemRequest(
      id: id,
    );
  }

  DeleteProblemRequest fromJson(Map<String, Object> json) {
    return DeleteProblemRequest.fromJson(json);
  }
}

/// @nodoc
const $DeleteProblemRequest = _$DeleteProblemRequestTearOff();

/// @nodoc
mixin _$DeleteProblemRequest {
  String get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeleteProblemRequestCopyWith<DeleteProblemRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteProblemRequestCopyWith<$Res> {
  factory $DeleteProblemRequestCopyWith(DeleteProblemRequest value,
          $Res Function(DeleteProblemRequest) then) =
      _$DeleteProblemRequestCopyWithImpl<$Res>;
  $Res call({String id});
}

/// @nodoc
class _$DeleteProblemRequestCopyWithImpl<$Res>
    implements $DeleteProblemRequestCopyWith<$Res> {
  _$DeleteProblemRequestCopyWithImpl(this._value, this._then);

  final DeleteProblemRequest _value;
  // ignore: unused_field
  final $Res Function(DeleteProblemRequest) _then;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$DeleteProblemRequestCopyWith<$Res>
    implements $DeleteProblemRequestCopyWith<$Res> {
  factory _$DeleteProblemRequestCopyWith(_DeleteProblemRequest value,
          $Res Function(_DeleteProblemRequest) then) =
      __$DeleteProblemRequestCopyWithImpl<$Res>;
  @override
  $Res call({String id});
}

/// @nodoc
class __$DeleteProblemRequestCopyWithImpl<$Res>
    extends _$DeleteProblemRequestCopyWithImpl<$Res>
    implements _$DeleteProblemRequestCopyWith<$Res> {
  __$DeleteProblemRequestCopyWithImpl(
      _DeleteProblemRequest _value, $Res Function(_DeleteProblemRequest) _then)
      : super(_value, (v) => _then(v as _DeleteProblemRequest));

  @override
  _DeleteProblemRequest get _value => super._value as _DeleteProblemRequest;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_DeleteProblemRequest(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DeleteProblemRequest
    with DiagnosticableTreeMixin
    implements _DeleteProblemRequest {
  const _$_DeleteProblemRequest({required this.id});

  factory _$_DeleteProblemRequest.fromJson(Map<String, dynamic> json) =>
      _$_$_DeleteProblemRequestFromJson(json);

  @override
  final String id;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DeleteProblemRequest(id: $id)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DeleteProblemRequest'))
      ..add(DiagnosticsProperty('id', id));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DeleteProblemRequest &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id);

  @JsonKey(ignore: true)
  @override
  _$DeleteProblemRequestCopyWith<_DeleteProblemRequest> get copyWith =>
      __$DeleteProblemRequestCopyWithImpl<_DeleteProblemRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_DeleteProblemRequestToJson(this);
  }
}

abstract class _DeleteProblemRequest implements DeleteProblemRequest {
  const factory _DeleteProblemRequest({required String id}) =
      _$_DeleteProblemRequest;

  factory _DeleteProblemRequest.fromJson(Map<String, dynamic> json) =
      _$_DeleteProblemRequest.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DeleteProblemRequestCopyWith<_DeleteProblemRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

DeleteProblemResponse _$DeleteProblemResponseFromJson(
    Map<String, dynamic> json) {
  return _DeleteProblemResponse.fromJson(json);
}

/// @nodoc
class _$DeleteProblemResponseTearOff {
  const _$DeleteProblemResponseTearOff();

  _DeleteProblemResponse call({required int code}) {
    return _DeleteProblemResponse(
      code: code,
    );
  }

  DeleteProblemResponse fromJson(Map<String, Object> json) {
    return DeleteProblemResponse.fromJson(json);
  }
}

/// @nodoc
const $DeleteProblemResponse = _$DeleteProblemResponseTearOff();

/// @nodoc
mixin _$DeleteProblemResponse {
  int get code => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeleteProblemResponseCopyWith<DeleteProblemResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteProblemResponseCopyWith<$Res> {
  factory $DeleteProblemResponseCopyWith(DeleteProblemResponse value,
          $Res Function(DeleteProblemResponse) then) =
      _$DeleteProblemResponseCopyWithImpl<$Res>;
  $Res call({int code});
}

/// @nodoc
class _$DeleteProblemResponseCopyWithImpl<$Res>
    implements $DeleteProblemResponseCopyWith<$Res> {
  _$DeleteProblemResponseCopyWithImpl(this._value, this._then);

  final DeleteProblemResponse _value;
  // ignore: unused_field
  final $Res Function(DeleteProblemResponse) _then;

  @override
  $Res call({
    Object? code = freezed,
  }) {
    return _then(_value.copyWith(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$DeleteProblemResponseCopyWith<$Res>
    implements $DeleteProblemResponseCopyWith<$Res> {
  factory _$DeleteProblemResponseCopyWith(_DeleteProblemResponse value,
          $Res Function(_DeleteProblemResponse) then) =
      __$DeleteProblemResponseCopyWithImpl<$Res>;
  @override
  $Res call({int code});
}

/// @nodoc
class __$DeleteProblemResponseCopyWithImpl<$Res>
    extends _$DeleteProblemResponseCopyWithImpl<$Res>
    implements _$DeleteProblemResponseCopyWith<$Res> {
  __$DeleteProblemResponseCopyWithImpl(_DeleteProblemResponse _value,
      $Res Function(_DeleteProblemResponse) _then)
      : super(_value, (v) => _then(v as _DeleteProblemResponse));

  @override
  _DeleteProblemResponse get _value => super._value as _DeleteProblemResponse;

  @override
  $Res call({
    Object? code = freezed,
  }) {
    return _then(_DeleteProblemResponse(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DeleteProblemResponse
    with DiagnosticableTreeMixin
    implements _DeleteProblemResponse {
  const _$_DeleteProblemResponse({required this.code});

  factory _$_DeleteProblemResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_DeleteProblemResponseFromJson(json);

  @override
  final int code;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DeleteProblemResponse(code: $code)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DeleteProblemResponse'))
      ..add(DiagnosticsProperty('code', code));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DeleteProblemResponse &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(code);

  @JsonKey(ignore: true)
  @override
  _$DeleteProblemResponseCopyWith<_DeleteProblemResponse> get copyWith =>
      __$DeleteProblemResponseCopyWithImpl<_DeleteProblemResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_DeleteProblemResponseToJson(this);
  }
}

abstract class _DeleteProblemResponse implements DeleteProblemResponse {
  const factory _DeleteProblemResponse({required int code}) =
      _$_DeleteProblemResponse;

  factory _DeleteProblemResponse.fromJson(Map<String, dynamic> json) =
      _$_DeleteProblemResponse.fromJson;

  @override
  int get code => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DeleteProblemResponseCopyWith<_DeleteProblemResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

FindAllProblemResponse _$FindAllProblemResponseFromJson(
    Map<String, dynamic> json) {
  return _FindAllProblemResponse.fromJson(json);
}

/// @nodoc
class _$FindAllProblemResponseTearOff {
  const _$FindAllProblemResponseTearOff();

  _FindAllProblemResponse call(
      {required int code, required FindAllProblemResponseData data}) {
    return _FindAllProblemResponse(
      code: code,
      data: data,
    );
  }

  FindAllProblemResponse fromJson(Map<String, Object> json) {
    return FindAllProblemResponse.fromJson(json);
  }
}

/// @nodoc
const $FindAllProblemResponse = _$FindAllProblemResponseTearOff();

/// @nodoc
mixin _$FindAllProblemResponse {
  int get code => throw _privateConstructorUsedError;
  FindAllProblemResponseData get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FindAllProblemResponseCopyWith<FindAllProblemResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FindAllProblemResponseCopyWith<$Res> {
  factory $FindAllProblemResponseCopyWith(FindAllProblemResponse value,
          $Res Function(FindAllProblemResponse) then) =
      _$FindAllProblemResponseCopyWithImpl<$Res>;
  $Res call({int code, FindAllProblemResponseData data});

  $FindAllProblemResponseDataCopyWith<$Res> get data;
}

/// @nodoc
class _$FindAllProblemResponseCopyWithImpl<$Res>
    implements $FindAllProblemResponseCopyWith<$Res> {
  _$FindAllProblemResponseCopyWithImpl(this._value, this._then);

  final FindAllProblemResponse _value;
  // ignore: unused_field
  final $Res Function(FindAllProblemResponse) _then;

  @override
  $Res call({
    Object? code = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as FindAllProblemResponseData,
    ));
  }

  @override
  $FindAllProblemResponseDataCopyWith<$Res> get data {
    return $FindAllProblemResponseDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
abstract class _$FindAllProblemResponseCopyWith<$Res>
    implements $FindAllProblemResponseCopyWith<$Res> {
  factory _$FindAllProblemResponseCopyWith(_FindAllProblemResponse value,
          $Res Function(_FindAllProblemResponse) then) =
      __$FindAllProblemResponseCopyWithImpl<$Res>;
  @override
  $Res call({int code, FindAllProblemResponseData data});

  @override
  $FindAllProblemResponseDataCopyWith<$Res> get data;
}

/// @nodoc
class __$FindAllProblemResponseCopyWithImpl<$Res>
    extends _$FindAllProblemResponseCopyWithImpl<$Res>
    implements _$FindAllProblemResponseCopyWith<$Res> {
  __$FindAllProblemResponseCopyWithImpl(_FindAllProblemResponse _value,
      $Res Function(_FindAllProblemResponse) _then)
      : super(_value, (v) => _then(v as _FindAllProblemResponse));

  @override
  _FindAllProblemResponse get _value => super._value as _FindAllProblemResponse;

  @override
  $Res call({
    Object? code = freezed,
    Object? data = freezed,
  }) {
    return _then(_FindAllProblemResponse(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as FindAllProblemResponseData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FindAllProblemResponse
    with DiagnosticableTreeMixin
    implements _FindAllProblemResponse {
  const _$_FindAllProblemResponse({required this.code, required this.data});

  factory _$_FindAllProblemResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_FindAllProblemResponseFromJson(json);

  @override
  final int code;
  @override
  final FindAllProblemResponseData data;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FindAllProblemResponse(code: $code, data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FindAllProblemResponse'))
      ..add(DiagnosticsProperty('code', code))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FindAllProblemResponse &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  _$FindAllProblemResponseCopyWith<_FindAllProblemResponse> get copyWith =>
      __$FindAllProblemResponseCopyWithImpl<_FindAllProblemResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_FindAllProblemResponseToJson(this);
  }
}

abstract class _FindAllProblemResponse implements FindAllProblemResponse {
  const factory _FindAllProblemResponse(
      {required int code,
      required FindAllProblemResponseData data}) = _$_FindAllProblemResponse;

  factory _FindAllProblemResponse.fromJson(Map<String, dynamic> json) =
      _$_FindAllProblemResponse.fromJson;

  @override
  int get code => throw _privateConstructorUsedError;
  @override
  FindAllProblemResponseData get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$FindAllProblemResponseCopyWith<_FindAllProblemResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

FindAllProblemResponseData _$FindAllProblemResponseDataFromJson(
    Map<String, dynamic> json) {
  return _FindAllProblemResponseData.fromJson(json);
}

/// @nodoc
class _$FindAllProblemResponseDataTearOff {
  const _$FindAllProblemResponseDataTearOff();

  _FindAllProblemResponseData call({required List<Problem> problems}) {
    return _FindAllProblemResponseData(
      problems: problems,
    );
  }

  FindAllProblemResponseData fromJson(Map<String, Object> json) {
    return FindAllProblemResponseData.fromJson(json);
  }
}

/// @nodoc
const $FindAllProblemResponseData = _$FindAllProblemResponseDataTearOff();

/// @nodoc
mixin _$FindAllProblemResponseData {
  List<Problem> get problems => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FindAllProblemResponseDataCopyWith<FindAllProblemResponseData>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FindAllProblemResponseDataCopyWith<$Res> {
  factory $FindAllProblemResponseDataCopyWith(FindAllProblemResponseData value,
          $Res Function(FindAllProblemResponseData) then) =
      _$FindAllProblemResponseDataCopyWithImpl<$Res>;
  $Res call({List<Problem> problems});
}

/// @nodoc
class _$FindAllProblemResponseDataCopyWithImpl<$Res>
    implements $FindAllProblemResponseDataCopyWith<$Res> {
  _$FindAllProblemResponseDataCopyWithImpl(this._value, this._then);

  final FindAllProblemResponseData _value;
  // ignore: unused_field
  final $Res Function(FindAllProblemResponseData) _then;

  @override
  $Res call({
    Object? problems = freezed,
  }) {
    return _then(_value.copyWith(
      problems: problems == freezed
          ? _value.problems
          : problems // ignore: cast_nullable_to_non_nullable
              as List<Problem>,
    ));
  }
}

/// @nodoc
abstract class _$FindAllProblemResponseDataCopyWith<$Res>
    implements $FindAllProblemResponseDataCopyWith<$Res> {
  factory _$FindAllProblemResponseDataCopyWith(
          _FindAllProblemResponseData value,
          $Res Function(_FindAllProblemResponseData) then) =
      __$FindAllProblemResponseDataCopyWithImpl<$Res>;
  @override
  $Res call({List<Problem> problems});
}

/// @nodoc
class __$FindAllProblemResponseDataCopyWithImpl<$Res>
    extends _$FindAllProblemResponseDataCopyWithImpl<$Res>
    implements _$FindAllProblemResponseDataCopyWith<$Res> {
  __$FindAllProblemResponseDataCopyWithImpl(_FindAllProblemResponseData _value,
      $Res Function(_FindAllProblemResponseData) _then)
      : super(_value, (v) => _then(v as _FindAllProblemResponseData));

  @override
  _FindAllProblemResponseData get _value =>
      super._value as _FindAllProblemResponseData;

  @override
  $Res call({
    Object? problems = freezed,
  }) {
    return _then(_FindAllProblemResponseData(
      problems: problems == freezed
          ? _value.problems
          : problems // ignore: cast_nullable_to_non_nullable
              as List<Problem>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FindAllProblemResponseData
    with DiagnosticableTreeMixin
    implements _FindAllProblemResponseData {
  const _$_FindAllProblemResponseData({required this.problems});

  factory _$_FindAllProblemResponseData.fromJson(Map<String, dynamic> json) =>
      _$_$_FindAllProblemResponseDataFromJson(json);

  @override
  final List<Problem> problems;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FindAllProblemResponseData(problems: $problems)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FindAllProblemResponseData'))
      ..add(DiagnosticsProperty('problems', problems));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FindAllProblemResponseData &&
            (identical(other.problems, problems) ||
                const DeepCollectionEquality()
                    .equals(other.problems, problems)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(problems);

  @JsonKey(ignore: true)
  @override
  _$FindAllProblemResponseDataCopyWith<_FindAllProblemResponseData>
      get copyWith => __$FindAllProblemResponseDataCopyWithImpl<
          _FindAllProblemResponseData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_FindAllProblemResponseDataToJson(this);
  }
}

abstract class _FindAllProblemResponseData
    implements FindAllProblemResponseData {
  const factory _FindAllProblemResponseData({required List<Problem> problems}) =
      _$_FindAllProblemResponseData;

  factory _FindAllProblemResponseData.fromJson(Map<String, dynamic> json) =
      _$_FindAllProblemResponseData.fromJson;

  @override
  List<Problem> get problems => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$FindAllProblemResponseDataCopyWith<_FindAllProblemResponseData>
      get copyWith => throw _privateConstructorUsedError;
}

FindProblemRequest _$FindProblemRequestFromJson(Map<String, dynamic> json) {
  return _FindProblemRequest.fromJson(json);
}

/// @nodoc
class _$FindProblemRequestTearOff {
  const _$FindProblemRequestTearOff();

  _FindProblemRequest call({required String id}) {
    return _FindProblemRequest(
      id: id,
    );
  }

  FindProblemRequest fromJson(Map<String, Object> json) {
    return FindProblemRequest.fromJson(json);
  }
}

/// @nodoc
const $FindProblemRequest = _$FindProblemRequestTearOff();

/// @nodoc
mixin _$FindProblemRequest {
  String get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FindProblemRequestCopyWith<FindProblemRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FindProblemRequestCopyWith<$Res> {
  factory $FindProblemRequestCopyWith(
          FindProblemRequest value, $Res Function(FindProblemRequest) then) =
      _$FindProblemRequestCopyWithImpl<$Res>;
  $Res call({String id});
}

/// @nodoc
class _$FindProblemRequestCopyWithImpl<$Res>
    implements $FindProblemRequestCopyWith<$Res> {
  _$FindProblemRequestCopyWithImpl(this._value, this._then);

  final FindProblemRequest _value;
  // ignore: unused_field
  final $Res Function(FindProblemRequest) _then;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$FindProblemRequestCopyWith<$Res>
    implements $FindProblemRequestCopyWith<$Res> {
  factory _$FindProblemRequestCopyWith(
          _FindProblemRequest value, $Res Function(_FindProblemRequest) then) =
      __$FindProblemRequestCopyWithImpl<$Res>;
  @override
  $Res call({String id});
}

/// @nodoc
class __$FindProblemRequestCopyWithImpl<$Res>
    extends _$FindProblemRequestCopyWithImpl<$Res>
    implements _$FindProblemRequestCopyWith<$Res> {
  __$FindProblemRequestCopyWithImpl(
      _FindProblemRequest _value, $Res Function(_FindProblemRequest) _then)
      : super(_value, (v) => _then(v as _FindProblemRequest));

  @override
  _FindProblemRequest get _value => super._value as _FindProblemRequest;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_FindProblemRequest(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FindProblemRequest
    with DiagnosticableTreeMixin
    implements _FindProblemRequest {
  const _$_FindProblemRequest({required this.id});

  factory _$_FindProblemRequest.fromJson(Map<String, dynamic> json) =>
      _$_$_FindProblemRequestFromJson(json);

  @override
  final String id;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FindProblemRequest(id: $id)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FindProblemRequest'))
      ..add(DiagnosticsProperty('id', id));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FindProblemRequest &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id);

  @JsonKey(ignore: true)
  @override
  _$FindProblemRequestCopyWith<_FindProblemRequest> get copyWith =>
      __$FindProblemRequestCopyWithImpl<_FindProblemRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_FindProblemRequestToJson(this);
  }
}

abstract class _FindProblemRequest implements FindProblemRequest {
  const factory _FindProblemRequest({required String id}) =
      _$_FindProblemRequest;

  factory _FindProblemRequest.fromJson(Map<String, dynamic> json) =
      _$_FindProblemRequest.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$FindProblemRequestCopyWith<_FindProblemRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

FindProblemResponse _$FindProblemResponseFromJson(Map<String, dynamic> json) {
  return _FindProblemResponse.fromJson(json);
}

/// @nodoc
class _$FindProblemResponseTearOff {
  const _$FindProblemResponseTearOff();

  _FindProblemResponse call(
      {required int code, required FindProblemResponseData data}) {
    return _FindProblemResponse(
      code: code,
      data: data,
    );
  }

  FindProblemResponse fromJson(Map<String, Object> json) {
    return FindProblemResponse.fromJson(json);
  }
}

/// @nodoc
const $FindProblemResponse = _$FindProblemResponseTearOff();

/// @nodoc
mixin _$FindProblemResponse {
  int get code => throw _privateConstructorUsedError;
  FindProblemResponseData get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FindProblemResponseCopyWith<FindProblemResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FindProblemResponseCopyWith<$Res> {
  factory $FindProblemResponseCopyWith(
          FindProblemResponse value, $Res Function(FindProblemResponse) then) =
      _$FindProblemResponseCopyWithImpl<$Res>;
  $Res call({int code, FindProblemResponseData data});

  $FindProblemResponseDataCopyWith<$Res> get data;
}

/// @nodoc
class _$FindProblemResponseCopyWithImpl<$Res>
    implements $FindProblemResponseCopyWith<$Res> {
  _$FindProblemResponseCopyWithImpl(this._value, this._then);

  final FindProblemResponse _value;
  // ignore: unused_field
  final $Res Function(FindProblemResponse) _then;

  @override
  $Res call({
    Object? code = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as FindProblemResponseData,
    ));
  }

  @override
  $FindProblemResponseDataCopyWith<$Res> get data {
    return $FindProblemResponseDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
abstract class _$FindProblemResponseCopyWith<$Res>
    implements $FindProblemResponseCopyWith<$Res> {
  factory _$FindProblemResponseCopyWith(_FindProblemResponse value,
          $Res Function(_FindProblemResponse) then) =
      __$FindProblemResponseCopyWithImpl<$Res>;
  @override
  $Res call({int code, FindProblemResponseData data});

  @override
  $FindProblemResponseDataCopyWith<$Res> get data;
}

/// @nodoc
class __$FindProblemResponseCopyWithImpl<$Res>
    extends _$FindProblemResponseCopyWithImpl<$Res>
    implements _$FindProblemResponseCopyWith<$Res> {
  __$FindProblemResponseCopyWithImpl(
      _FindProblemResponse _value, $Res Function(_FindProblemResponse) _then)
      : super(_value, (v) => _then(v as _FindProblemResponse));

  @override
  _FindProblemResponse get _value => super._value as _FindProblemResponse;

  @override
  $Res call({
    Object? code = freezed,
    Object? data = freezed,
  }) {
    return _then(_FindProblemResponse(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as FindProblemResponseData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FindProblemResponse
    with DiagnosticableTreeMixin
    implements _FindProblemResponse {
  const _$_FindProblemResponse({required this.code, required this.data});

  factory _$_FindProblemResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_FindProblemResponseFromJson(json);

  @override
  final int code;
  @override
  final FindProblemResponseData data;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FindProblemResponse(code: $code, data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FindProblemResponse'))
      ..add(DiagnosticsProperty('code', code))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FindProblemResponse &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  _$FindProblemResponseCopyWith<_FindProblemResponse> get copyWith =>
      __$FindProblemResponseCopyWithImpl<_FindProblemResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_FindProblemResponseToJson(this);
  }
}

abstract class _FindProblemResponse implements FindProblemResponse {
  const factory _FindProblemResponse(
      {required int code,
      required FindProblemResponseData data}) = _$_FindProblemResponse;

  factory _FindProblemResponse.fromJson(Map<String, dynamic> json) =
      _$_FindProblemResponse.fromJson;

  @override
  int get code => throw _privateConstructorUsedError;
  @override
  FindProblemResponseData get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$FindProblemResponseCopyWith<_FindProblemResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

FindProblemResponseData _$FindProblemResponseDataFromJson(
    Map<String, dynamic> json) {
  return _FindProblemResponseData.fromJson(json);
}

/// @nodoc
class _$FindProblemResponseDataTearOff {
  const _$FindProblemResponseDataTearOff();

  _FindProblemResponseData call({required Problem problem}) {
    return _FindProblemResponseData(
      problem: problem,
    );
  }

  FindProblemResponseData fromJson(Map<String, Object> json) {
    return FindProblemResponseData.fromJson(json);
  }
}

/// @nodoc
const $FindProblemResponseData = _$FindProblemResponseDataTearOff();

/// @nodoc
mixin _$FindProblemResponseData {
  Problem get problem => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FindProblemResponseDataCopyWith<FindProblemResponseData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FindProblemResponseDataCopyWith<$Res> {
  factory $FindProblemResponseDataCopyWith(FindProblemResponseData value,
          $Res Function(FindProblemResponseData) then) =
      _$FindProblemResponseDataCopyWithImpl<$Res>;
  $Res call({Problem problem});

  $ProblemCopyWith<$Res> get problem;
}

/// @nodoc
class _$FindProblemResponseDataCopyWithImpl<$Res>
    implements $FindProblemResponseDataCopyWith<$Res> {
  _$FindProblemResponseDataCopyWithImpl(this._value, this._then);

  final FindProblemResponseData _value;
  // ignore: unused_field
  final $Res Function(FindProblemResponseData) _then;

  @override
  $Res call({
    Object? problem = freezed,
  }) {
    return _then(_value.copyWith(
      problem: problem == freezed
          ? _value.problem
          : problem // ignore: cast_nullable_to_non_nullable
              as Problem,
    ));
  }

  @override
  $ProblemCopyWith<$Res> get problem {
    return $ProblemCopyWith<$Res>(_value.problem, (value) {
      return _then(_value.copyWith(problem: value));
    });
  }
}

/// @nodoc
abstract class _$FindProblemResponseDataCopyWith<$Res>
    implements $FindProblemResponseDataCopyWith<$Res> {
  factory _$FindProblemResponseDataCopyWith(_FindProblemResponseData value,
          $Res Function(_FindProblemResponseData) then) =
      __$FindProblemResponseDataCopyWithImpl<$Res>;
  @override
  $Res call({Problem problem});

  @override
  $ProblemCopyWith<$Res> get problem;
}

/// @nodoc
class __$FindProblemResponseDataCopyWithImpl<$Res>
    extends _$FindProblemResponseDataCopyWithImpl<$Res>
    implements _$FindProblemResponseDataCopyWith<$Res> {
  __$FindProblemResponseDataCopyWithImpl(_FindProblemResponseData _value,
      $Res Function(_FindProblemResponseData) _then)
      : super(_value, (v) => _then(v as _FindProblemResponseData));

  @override
  _FindProblemResponseData get _value =>
      super._value as _FindProblemResponseData;

  @override
  $Res call({
    Object? problem = freezed,
  }) {
    return _then(_FindProblemResponseData(
      problem: problem == freezed
          ? _value.problem
          : problem // ignore: cast_nullable_to_non_nullable
              as Problem,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FindProblemResponseData
    with DiagnosticableTreeMixin
    implements _FindProblemResponseData {
  const _$_FindProblemResponseData({required this.problem});

  factory _$_FindProblemResponseData.fromJson(Map<String, dynamic> json) =>
      _$_$_FindProblemResponseDataFromJson(json);

  @override
  final Problem problem;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FindProblemResponseData(problem: $problem)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FindProblemResponseData'))
      ..add(DiagnosticsProperty('problem', problem));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FindProblemResponseData &&
            (identical(other.problem, problem) ||
                const DeepCollectionEquality().equals(other.problem, problem)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(problem);

  @JsonKey(ignore: true)
  @override
  _$FindProblemResponseDataCopyWith<_FindProblemResponseData> get copyWith =>
      __$FindProblemResponseDataCopyWithImpl<_FindProblemResponseData>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_FindProblemResponseDataToJson(this);
  }
}

abstract class _FindProblemResponseData implements FindProblemResponseData {
  const factory _FindProblemResponseData({required Problem problem}) =
      _$_FindProblemResponseData;

  factory _FindProblemResponseData.fromJson(Map<String, dynamic> json) =
      _$_FindProblemResponseData.fromJson;

  @override
  Problem get problem => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$FindProblemResponseDataCopyWith<_FindProblemResponseData> get copyWith =>
      throw _privateConstructorUsedError;
}

UpdateProblemRequest _$UpdateProblemRequestFromJson(Map<String, dynamic> json) {
  return _UpdateProblemRequest.fromJson(json);
}

/// @nodoc
class _$UpdateProblemRequestTearOff {
  const _$UpdateProblemRequestTearOff();

  _UpdateProblemRequest call(
      {required String id,
      required String authorId,
      String title = '',
      String body = '',
      int point = 0,
      int solvedCriterion = 0,
      String? previousProblemId}) {
    return _UpdateProblemRequest(
      id: id,
      authorId: authorId,
      title: title,
      body: body,
      point: point,
      solvedCriterion: solvedCriterion,
      previousProblemId: previousProblemId,
    );
  }

  UpdateProblemRequest fromJson(Map<String, Object> json) {
    return UpdateProblemRequest.fromJson(json);
  }
}

/// @nodoc
const $UpdateProblemRequest = _$UpdateProblemRequestTearOff();

/// @nodoc
mixin _$UpdateProblemRequest {
  String get id => throw _privateConstructorUsedError;
  String get authorId => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get body => throw _privateConstructorUsedError;
  int get point => throw _privateConstructorUsedError;
  int get solvedCriterion => throw _privateConstructorUsedError;
  String? get previousProblemId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateProblemRequestCopyWith<UpdateProblemRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateProblemRequestCopyWith<$Res> {
  factory $UpdateProblemRequestCopyWith(UpdateProblemRequest value,
          $Res Function(UpdateProblemRequest) then) =
      _$UpdateProblemRequestCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String authorId,
      String title,
      String body,
      int point,
      int solvedCriterion,
      String? previousProblemId});
}

/// @nodoc
class _$UpdateProblemRequestCopyWithImpl<$Res>
    implements $UpdateProblemRequestCopyWith<$Res> {
  _$UpdateProblemRequestCopyWithImpl(this._value, this._then);

  final UpdateProblemRequest _value;
  // ignore: unused_field
  final $Res Function(UpdateProblemRequest) _then;

  @override
  $Res call({
    Object? id = freezed,
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
abstract class _$UpdateProblemRequestCopyWith<$Res>
    implements $UpdateProblemRequestCopyWith<$Res> {
  factory _$UpdateProblemRequestCopyWith(_UpdateProblemRequest value,
          $Res Function(_UpdateProblemRequest) then) =
      __$UpdateProblemRequestCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String authorId,
      String title,
      String body,
      int point,
      int solvedCriterion,
      String? previousProblemId});
}

/// @nodoc
class __$UpdateProblemRequestCopyWithImpl<$Res>
    extends _$UpdateProblemRequestCopyWithImpl<$Res>
    implements _$UpdateProblemRequestCopyWith<$Res> {
  __$UpdateProblemRequestCopyWithImpl(
      _UpdateProblemRequest _value, $Res Function(_UpdateProblemRequest) _then)
      : super(_value, (v) => _then(v as _UpdateProblemRequest));

  @override
  _UpdateProblemRequest get _value => super._value as _UpdateProblemRequest;

  @override
  $Res call({
    Object? id = freezed,
    Object? authorId = freezed,
    Object? title = freezed,
    Object? body = freezed,
    Object? point = freezed,
    Object? solvedCriterion = freezed,
    Object? previousProblemId = freezed,
  }) {
    return _then(_UpdateProblemRequest(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
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
class _$_UpdateProblemRequest
    with DiagnosticableTreeMixin
    implements _UpdateProblemRequest {
  const _$_UpdateProblemRequest(
      {required this.id,
      required this.authorId,
      this.title = '',
      this.body = '',
      this.point = 0,
      this.solvedCriterion = 0,
      this.previousProblemId});

  factory _$_UpdateProblemRequest.fromJson(Map<String, dynamic> json) =>
      _$_$_UpdateProblemRequestFromJson(json);

  @override
  final String id;
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
    return 'UpdateProblemRequest(id: $id, authorId: $authorId, title: $title, body: $body, point: $point, solvedCriterion: $solvedCriterion, previousProblemId: $previousProblemId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UpdateProblemRequest'))
      ..add(DiagnosticsProperty('id', id))
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
        (other is _UpdateProblemRequest &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
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
      const DeepCollectionEquality().hash(authorId) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(body) ^
      const DeepCollectionEquality().hash(point) ^
      const DeepCollectionEquality().hash(solvedCriterion) ^
      const DeepCollectionEquality().hash(previousProblemId);

  @JsonKey(ignore: true)
  @override
  _$UpdateProblemRequestCopyWith<_UpdateProblemRequest> get copyWith =>
      __$UpdateProblemRequestCopyWithImpl<_UpdateProblemRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_UpdateProblemRequestToJson(this);
  }
}

abstract class _UpdateProblemRequest implements UpdateProblemRequest {
  const factory _UpdateProblemRequest(
      {required String id,
      required String authorId,
      String title,
      String body,
      int point,
      int solvedCriterion,
      String? previousProblemId}) = _$_UpdateProblemRequest;

  factory _UpdateProblemRequest.fromJson(Map<String, dynamic> json) =
      _$_UpdateProblemRequest.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
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
  _$UpdateProblemRequestCopyWith<_UpdateProblemRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

UpdateProblemResponse _$UpdateProblemResponseFromJson(
    Map<String, dynamic> json) {
  return _UpdateProblemResponse.fromJson(json);
}

/// @nodoc
class _$UpdateProblemResponseTearOff {
  const _$UpdateProblemResponseTearOff();

  _UpdateProblemResponse call(
      {required int code, required UpdateProblemResponseData data}) {
    return _UpdateProblemResponse(
      code: code,
      data: data,
    );
  }

  UpdateProblemResponse fromJson(Map<String, Object> json) {
    return UpdateProblemResponse.fromJson(json);
  }
}

/// @nodoc
const $UpdateProblemResponse = _$UpdateProblemResponseTearOff();

/// @nodoc
mixin _$UpdateProblemResponse {
  int get code => throw _privateConstructorUsedError;
  UpdateProblemResponseData get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateProblemResponseCopyWith<UpdateProblemResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateProblemResponseCopyWith<$Res> {
  factory $UpdateProblemResponseCopyWith(UpdateProblemResponse value,
          $Res Function(UpdateProblemResponse) then) =
      _$UpdateProblemResponseCopyWithImpl<$Res>;
  $Res call({int code, UpdateProblemResponseData data});

  $UpdateProblemResponseDataCopyWith<$Res> get data;
}

/// @nodoc
class _$UpdateProblemResponseCopyWithImpl<$Res>
    implements $UpdateProblemResponseCopyWith<$Res> {
  _$UpdateProblemResponseCopyWithImpl(this._value, this._then);

  final UpdateProblemResponse _value;
  // ignore: unused_field
  final $Res Function(UpdateProblemResponse) _then;

  @override
  $Res call({
    Object? code = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as UpdateProblemResponseData,
    ));
  }

  @override
  $UpdateProblemResponseDataCopyWith<$Res> get data {
    return $UpdateProblemResponseDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
abstract class _$UpdateProblemResponseCopyWith<$Res>
    implements $UpdateProblemResponseCopyWith<$Res> {
  factory _$UpdateProblemResponseCopyWith(_UpdateProblemResponse value,
          $Res Function(_UpdateProblemResponse) then) =
      __$UpdateProblemResponseCopyWithImpl<$Res>;
  @override
  $Res call({int code, UpdateProblemResponseData data});

  @override
  $UpdateProblemResponseDataCopyWith<$Res> get data;
}

/// @nodoc
class __$UpdateProblemResponseCopyWithImpl<$Res>
    extends _$UpdateProblemResponseCopyWithImpl<$Res>
    implements _$UpdateProblemResponseCopyWith<$Res> {
  __$UpdateProblemResponseCopyWithImpl(_UpdateProblemResponse _value,
      $Res Function(_UpdateProblemResponse) _then)
      : super(_value, (v) => _then(v as _UpdateProblemResponse));

  @override
  _UpdateProblemResponse get _value => super._value as _UpdateProblemResponse;

  @override
  $Res call({
    Object? code = freezed,
    Object? data = freezed,
  }) {
    return _then(_UpdateProblemResponse(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as UpdateProblemResponseData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UpdateProblemResponse
    with DiagnosticableTreeMixin
    implements _UpdateProblemResponse {
  const _$_UpdateProblemResponse({required this.code, required this.data});

  factory _$_UpdateProblemResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_UpdateProblemResponseFromJson(json);

  @override
  final int code;
  @override
  final UpdateProblemResponseData data;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UpdateProblemResponse(code: $code, data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UpdateProblemResponse'))
      ..add(DiagnosticsProperty('code', code))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UpdateProblemResponse &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  _$UpdateProblemResponseCopyWith<_UpdateProblemResponse> get copyWith =>
      __$UpdateProblemResponseCopyWithImpl<_UpdateProblemResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_UpdateProblemResponseToJson(this);
  }
}

abstract class _UpdateProblemResponse implements UpdateProblemResponse {
  const factory _UpdateProblemResponse(
      {required int code,
      required UpdateProblemResponseData data}) = _$_UpdateProblemResponse;

  factory _UpdateProblemResponse.fromJson(Map<String, dynamic> json) =
      _$_UpdateProblemResponse.fromJson;

  @override
  int get code => throw _privateConstructorUsedError;
  @override
  UpdateProblemResponseData get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UpdateProblemResponseCopyWith<_UpdateProblemResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

UpdateProblemResponseData _$UpdateProblemResponseDataFromJson(
    Map<String, dynamic> json) {
  return _UpdateProblemResponseData.fromJson(json);
}

/// @nodoc
class _$UpdateProblemResponseDataTearOff {
  const _$UpdateProblemResponseDataTearOff();

  _UpdateProblemResponseData call({required Problem problem}) {
    return _UpdateProblemResponseData(
      problem: problem,
    );
  }

  UpdateProblemResponseData fromJson(Map<String, Object> json) {
    return UpdateProblemResponseData.fromJson(json);
  }
}

/// @nodoc
const $UpdateProblemResponseData = _$UpdateProblemResponseDataTearOff();

/// @nodoc
mixin _$UpdateProblemResponseData {
  Problem get problem => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateProblemResponseDataCopyWith<UpdateProblemResponseData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateProblemResponseDataCopyWith<$Res> {
  factory $UpdateProblemResponseDataCopyWith(UpdateProblemResponseData value,
          $Res Function(UpdateProblemResponseData) then) =
      _$UpdateProblemResponseDataCopyWithImpl<$Res>;
  $Res call({Problem problem});

  $ProblemCopyWith<$Res> get problem;
}

/// @nodoc
class _$UpdateProblemResponseDataCopyWithImpl<$Res>
    implements $UpdateProblemResponseDataCopyWith<$Res> {
  _$UpdateProblemResponseDataCopyWithImpl(this._value, this._then);

  final UpdateProblemResponseData _value;
  // ignore: unused_field
  final $Res Function(UpdateProblemResponseData) _then;

  @override
  $Res call({
    Object? problem = freezed,
  }) {
    return _then(_value.copyWith(
      problem: problem == freezed
          ? _value.problem
          : problem // ignore: cast_nullable_to_non_nullable
              as Problem,
    ));
  }

  @override
  $ProblemCopyWith<$Res> get problem {
    return $ProblemCopyWith<$Res>(_value.problem, (value) {
      return _then(_value.copyWith(problem: value));
    });
  }
}

/// @nodoc
abstract class _$UpdateProblemResponseDataCopyWith<$Res>
    implements $UpdateProblemResponseDataCopyWith<$Res> {
  factory _$UpdateProblemResponseDataCopyWith(_UpdateProblemResponseData value,
          $Res Function(_UpdateProblemResponseData) then) =
      __$UpdateProblemResponseDataCopyWithImpl<$Res>;
  @override
  $Res call({Problem problem});

  @override
  $ProblemCopyWith<$Res> get problem;
}

/// @nodoc
class __$UpdateProblemResponseDataCopyWithImpl<$Res>
    extends _$UpdateProblemResponseDataCopyWithImpl<$Res>
    implements _$UpdateProblemResponseDataCopyWith<$Res> {
  __$UpdateProblemResponseDataCopyWithImpl(_UpdateProblemResponseData _value,
      $Res Function(_UpdateProblemResponseData) _then)
      : super(_value, (v) => _then(v as _UpdateProblemResponseData));

  @override
  _UpdateProblemResponseData get _value =>
      super._value as _UpdateProblemResponseData;

  @override
  $Res call({
    Object? problem = freezed,
  }) {
    return _then(_UpdateProblemResponseData(
      problem: problem == freezed
          ? _value.problem
          : problem // ignore: cast_nullable_to_non_nullable
              as Problem,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UpdateProblemResponseData
    with DiagnosticableTreeMixin
    implements _UpdateProblemResponseData {
  const _$_UpdateProblemResponseData({required this.problem});

  factory _$_UpdateProblemResponseData.fromJson(Map<String, dynamic> json) =>
      _$_$_UpdateProblemResponseDataFromJson(json);

  @override
  final Problem problem;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UpdateProblemResponseData(problem: $problem)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UpdateProblemResponseData'))
      ..add(DiagnosticsProperty('problem', problem));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UpdateProblemResponseData &&
            (identical(other.problem, problem) ||
                const DeepCollectionEquality().equals(other.problem, problem)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(problem);

  @JsonKey(ignore: true)
  @override
  _$UpdateProblemResponseDataCopyWith<_UpdateProblemResponseData>
      get copyWith =>
          __$UpdateProblemResponseDataCopyWithImpl<_UpdateProblemResponseData>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_UpdateProblemResponseDataToJson(this);
  }
}

abstract class _UpdateProblemResponseData implements UpdateProblemResponseData {
  const factory _UpdateProblemResponseData({required Problem problem}) =
      _$_UpdateProblemResponseData;

  factory _UpdateProblemResponseData.fromJson(Map<String, dynamic> json) =
      _$_UpdateProblemResponseData.fromJson;

  @override
  Problem get problem => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UpdateProblemResponseDataCopyWith<_UpdateProblemResponseData>
      get copyWith => throw _privateConstructorUsedError;
}

FileUploadResponse _$FileUploadResponseFromJson(Map<String, dynamic> json) {
  return _FileUploadResponse.fromJson(json);
}

/// @nodoc
class _$FileUploadResponseTearOff {
  const _$FileUploadResponseTearOff();

  _FileUploadResponse call(
      {required int id, required FileUploadResponseData data}) {
    return _FileUploadResponse(
      id: id,
      data: data,
    );
  }

  FileUploadResponse fromJson(Map<String, Object> json) {
    return FileUploadResponse.fromJson(json);
  }
}

/// @nodoc
const $FileUploadResponse = _$FileUploadResponseTearOff();

/// @nodoc
mixin _$FileUploadResponse {
  int get id => throw _privateConstructorUsedError;
  FileUploadResponseData get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FileUploadResponseCopyWith<FileUploadResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FileUploadResponseCopyWith<$Res> {
  factory $FileUploadResponseCopyWith(
          FileUploadResponse value, $Res Function(FileUploadResponse) then) =
      _$FileUploadResponseCopyWithImpl<$Res>;
  $Res call({int id, FileUploadResponseData data});

  $FileUploadResponseDataCopyWith<$Res> get data;
}

/// @nodoc
class _$FileUploadResponseCopyWithImpl<$Res>
    implements $FileUploadResponseCopyWith<$Res> {
  _$FileUploadResponseCopyWithImpl(this._value, this._then);

  final FileUploadResponse _value;
  // ignore: unused_field
  final $Res Function(FileUploadResponse) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as FileUploadResponseData,
    ));
  }

  @override
  $FileUploadResponseDataCopyWith<$Res> get data {
    return $FileUploadResponseDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
abstract class _$FileUploadResponseCopyWith<$Res>
    implements $FileUploadResponseCopyWith<$Res> {
  factory _$FileUploadResponseCopyWith(
          _FileUploadResponse value, $Res Function(_FileUploadResponse) then) =
      __$FileUploadResponseCopyWithImpl<$Res>;
  @override
  $Res call({int id, FileUploadResponseData data});

  @override
  $FileUploadResponseDataCopyWith<$Res> get data;
}

/// @nodoc
class __$FileUploadResponseCopyWithImpl<$Res>
    extends _$FileUploadResponseCopyWithImpl<$Res>
    implements _$FileUploadResponseCopyWith<$Res> {
  __$FileUploadResponseCopyWithImpl(
      _FileUploadResponse _value, $Res Function(_FileUploadResponse) _then)
      : super(_value, (v) => _then(v as _FileUploadResponse));

  @override
  _FileUploadResponse get _value => super._value as _FileUploadResponse;

  @override
  $Res call({
    Object? id = freezed,
    Object? data = freezed,
  }) {
    return _then(_FileUploadResponse(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as FileUploadResponseData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FileUploadResponse
    with DiagnosticableTreeMixin
    implements _FileUploadResponse {
  const _$_FileUploadResponse({required this.id, required this.data});

  factory _$_FileUploadResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_FileUploadResponseFromJson(json);

  @override
  final int id;
  @override
  final FileUploadResponseData data;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FileUploadResponse(id: $id, data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FileUploadResponse'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FileUploadResponse &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  _$FileUploadResponseCopyWith<_FileUploadResponse> get copyWith =>
      __$FileUploadResponseCopyWithImpl<_FileUploadResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_FileUploadResponseToJson(this);
  }
}

abstract class _FileUploadResponse implements FileUploadResponse {
  const factory _FileUploadResponse(
      {required int id,
      required FileUploadResponseData data}) = _$_FileUploadResponse;

  factory _FileUploadResponse.fromJson(Map<String, dynamic> json) =
      _$_FileUploadResponse.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  FileUploadResponseData get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$FileUploadResponseCopyWith<_FileUploadResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

FileUploadResponseData _$FileUploadResponseDataFromJson(
    Map<String, dynamic> json) {
  return _FileUploadResponseData.fromJson(json);
}

/// @nodoc
class _$FileUploadResponseDataTearOff {
  const _$FileUploadResponseDataTearOff();

  _FileUploadResponseData call(
      {required String id,
      required DateTime updatedAt,
      required DateTime createdAt,
      @JsonKey(name: 'UserID') required String userId}) {
    return _FileUploadResponseData(
      id: id,
      updatedAt: updatedAt,
      createdAt: createdAt,
      userId: userId,
    );
  }

  FileUploadResponseData fromJson(Map<String, Object> json) {
    return FileUploadResponseData.fromJson(json);
  }
}

/// @nodoc
const $FileUploadResponseData = _$FileUploadResponseDataTearOff();

/// @nodoc
mixin _$FileUploadResponseData {
  String get id => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'UserID')
  String get userId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FileUploadResponseDataCopyWith<FileUploadResponseData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FileUploadResponseDataCopyWith<$Res> {
  factory $FileUploadResponseDataCopyWith(FileUploadResponseData value,
          $Res Function(FileUploadResponseData) then) =
      _$FileUploadResponseDataCopyWithImpl<$Res>;
  $Res call(
      {String id,
      DateTime updatedAt,
      DateTime createdAt,
      @JsonKey(name: 'UserID') String userId});
}

/// @nodoc
class _$FileUploadResponseDataCopyWithImpl<$Res>
    implements $FileUploadResponseDataCopyWith<$Res> {
  _$FileUploadResponseDataCopyWithImpl(this._value, this._then);

  final FileUploadResponseData _value;
  // ignore: unused_field
  final $Res Function(FileUploadResponseData) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? updatedAt = freezed,
    Object? createdAt = freezed,
    Object? userId = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$FileUploadResponseDataCopyWith<$Res>
    implements $FileUploadResponseDataCopyWith<$Res> {
  factory _$FileUploadResponseDataCopyWith(_FileUploadResponseData value,
          $Res Function(_FileUploadResponseData) then) =
      __$FileUploadResponseDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      DateTime updatedAt,
      DateTime createdAt,
      @JsonKey(name: 'UserID') String userId});
}

/// @nodoc
class __$FileUploadResponseDataCopyWithImpl<$Res>
    extends _$FileUploadResponseDataCopyWithImpl<$Res>
    implements _$FileUploadResponseDataCopyWith<$Res> {
  __$FileUploadResponseDataCopyWithImpl(_FileUploadResponseData _value,
      $Res Function(_FileUploadResponseData) _then)
      : super(_value, (v) => _then(v as _FileUploadResponseData));

  @override
  _FileUploadResponseData get _value => super._value as _FileUploadResponseData;

  @override
  $Res call({
    Object? id = freezed,
    Object? updatedAt = freezed,
    Object? createdAt = freezed,
    Object? userId = freezed,
  }) {
    return _then(_FileUploadResponseData(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FileUploadResponseData
    with DiagnosticableTreeMixin
    implements _FileUploadResponseData {
  const _$_FileUploadResponseData(
      {required this.id,
      required this.updatedAt,
      required this.createdAt,
      @JsonKey(name: 'UserID') required this.userId});

  factory _$_FileUploadResponseData.fromJson(Map<String, dynamic> json) =>
      _$_$_FileUploadResponseDataFromJson(json);

  @override
  final String id;
  @override
  final DateTime updatedAt;
  @override
  final DateTime createdAt;
  @override
  @JsonKey(name: 'UserID')
  final String userId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FileUploadResponseData(id: $id, updatedAt: $updatedAt, createdAt: $createdAt, userId: $userId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FileUploadResponseData'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('updatedAt', updatedAt))
      ..add(DiagnosticsProperty('createdAt', createdAt))
      ..add(DiagnosticsProperty('userId', userId));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FileUploadResponseData &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(userId);

  @JsonKey(ignore: true)
  @override
  _$FileUploadResponseDataCopyWith<_FileUploadResponseData> get copyWith =>
      __$FileUploadResponseDataCopyWithImpl<_FileUploadResponseData>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_FileUploadResponseDataToJson(this);
  }
}

abstract class _FileUploadResponseData implements FileUploadResponseData {
  const factory _FileUploadResponseData(
          {required String id,
          required DateTime updatedAt,
          required DateTime createdAt,
          @JsonKey(name: 'UserID') required String userId}) =
      _$_FileUploadResponseData;

  factory _FileUploadResponseData.fromJson(Map<String, dynamic> json) =
      _$_FileUploadResponseData.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  DateTime get updatedAt => throw _privateConstructorUsedError;
  @override
  DateTime get createdAt => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'UserID')
  String get userId => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$FileUploadResponseDataCopyWith<_FileUploadResponseData> get copyWith =>
      throw _privateConstructorUsedError;
}
