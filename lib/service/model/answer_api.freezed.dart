// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'answer_api.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CreateAnswerRequest _$CreateAnswerRequestFromJson(Map<String, dynamic> json) {
  return _CreateAnswerRequest.fromJson(json);
}

/// @nodoc
class _$CreateAnswerRequestTearOff {
  const _$CreateAnswerRequestTearOff();

  _CreateAnswerRequest call(
      {required String userGroupId,
      required String problemId,
      required String body}) {
    return _CreateAnswerRequest(
      userGroupId: userGroupId,
      problemId: problemId,
      body: body,
    );
  }

  CreateAnswerRequest fromJson(Map<String, Object> json) {
    return CreateAnswerRequest.fromJson(json);
  }
}

/// @nodoc
const $CreateAnswerRequest = _$CreateAnswerRequestTearOff();

/// @nodoc
mixin _$CreateAnswerRequest {
  String get userGroupId => throw _privateConstructorUsedError;
  String get problemId => throw _privateConstructorUsedError;
  String get body => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateAnswerRequestCopyWith<CreateAnswerRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateAnswerRequestCopyWith<$Res> {
  factory $CreateAnswerRequestCopyWith(
          CreateAnswerRequest value, $Res Function(CreateAnswerRequest) then) =
      _$CreateAnswerRequestCopyWithImpl<$Res>;
  $Res call({String userGroupId, String problemId, String body});
}

/// @nodoc
class _$CreateAnswerRequestCopyWithImpl<$Res>
    implements $CreateAnswerRequestCopyWith<$Res> {
  _$CreateAnswerRequestCopyWithImpl(this._value, this._then);

  final CreateAnswerRequest _value;
  // ignore: unused_field
  final $Res Function(CreateAnswerRequest) _then;

  @override
  $Res call({
    Object? userGroupId = freezed,
    Object? problemId = freezed,
    Object? body = freezed,
  }) {
    return _then(_value.copyWith(
      userGroupId: userGroupId == freezed
          ? _value.userGroupId
          : userGroupId // ignore: cast_nullable_to_non_nullable
              as String,
      problemId: problemId == freezed
          ? _value.problemId
          : problemId // ignore: cast_nullable_to_non_nullable
              as String,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$CreateAnswerRequestCopyWith<$Res>
    implements $CreateAnswerRequestCopyWith<$Res> {
  factory _$CreateAnswerRequestCopyWith(_CreateAnswerRequest value,
          $Res Function(_CreateAnswerRequest) then) =
      __$CreateAnswerRequestCopyWithImpl<$Res>;
  @override
  $Res call({String userGroupId, String problemId, String body});
}

/// @nodoc
class __$CreateAnswerRequestCopyWithImpl<$Res>
    extends _$CreateAnswerRequestCopyWithImpl<$Res>
    implements _$CreateAnswerRequestCopyWith<$Res> {
  __$CreateAnswerRequestCopyWithImpl(
      _CreateAnswerRequest _value, $Res Function(_CreateAnswerRequest) _then)
      : super(_value, (v) => _then(v as _CreateAnswerRequest));

  @override
  _CreateAnswerRequest get _value => super._value as _CreateAnswerRequest;

  @override
  $Res call({
    Object? userGroupId = freezed,
    Object? problemId = freezed,
    Object? body = freezed,
  }) {
    return _then(_CreateAnswerRequest(
      userGroupId: userGroupId == freezed
          ? _value.userGroupId
          : userGroupId // ignore: cast_nullable_to_non_nullable
              as String,
      problemId: problemId == freezed
          ? _value.problemId
          : problemId // ignore: cast_nullable_to_non_nullable
              as String,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CreateAnswerRequest
    with DiagnosticableTreeMixin
    implements _CreateAnswerRequest {
  const _$_CreateAnswerRequest(
      {required this.userGroupId, required this.problemId, required this.body});

  factory _$_CreateAnswerRequest.fromJson(Map<String, dynamic> json) =>
      _$$_CreateAnswerRequestFromJson(json);

  @override
  final String userGroupId;
  @override
  final String problemId;
  @override
  final String body;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CreateAnswerRequest(userGroupId: $userGroupId, problemId: $problemId, body: $body)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CreateAnswerRequest'))
      ..add(DiagnosticsProperty('userGroupId', userGroupId))
      ..add(DiagnosticsProperty('problemId', problemId))
      ..add(DiagnosticsProperty('body', body));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CreateAnswerRequest &&
            (identical(other.userGroupId, userGroupId) ||
                const DeepCollectionEquality()
                    .equals(other.userGroupId, userGroupId)) &&
            (identical(other.problemId, problemId) ||
                const DeepCollectionEquality()
                    .equals(other.problemId, problemId)) &&
            (identical(other.body, body) ||
                const DeepCollectionEquality().equals(other.body, body)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(userGroupId) ^
      const DeepCollectionEquality().hash(problemId) ^
      const DeepCollectionEquality().hash(body);

  @JsonKey(ignore: true)
  @override
  _$CreateAnswerRequestCopyWith<_CreateAnswerRequest> get copyWith =>
      __$CreateAnswerRequestCopyWithImpl<_CreateAnswerRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CreateAnswerRequestToJson(this);
  }
}

abstract class _CreateAnswerRequest implements CreateAnswerRequest {
  const factory _CreateAnswerRequest(
      {required String userGroupId,
      required String problemId,
      required String body}) = _$_CreateAnswerRequest;

  factory _CreateAnswerRequest.fromJson(Map<String, dynamic> json) =
      _$_CreateAnswerRequest.fromJson;

  @override
  String get userGroupId => throw _privateConstructorUsedError;
  @override
  String get problemId => throw _privateConstructorUsedError;
  @override
  String get body => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CreateAnswerRequestCopyWith<_CreateAnswerRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

CreateAnswerResponse _$CreateAnswerResponseFromJson(Map<String, dynamic> json) {
  return _CreateAnswerResponse.fromJson(json);
}

/// @nodoc
class _$CreateAnswerResponseTearOff {
  const _$CreateAnswerResponseTearOff();

  _CreateAnswerResponse call(
      {required int code, required CreateAnswerResponseData data}) {
    return _CreateAnswerResponse(
      code: code,
      data: data,
    );
  }

  CreateAnswerResponse fromJson(Map<String, Object> json) {
    return CreateAnswerResponse.fromJson(json);
  }
}

/// @nodoc
const $CreateAnswerResponse = _$CreateAnswerResponseTearOff();

/// @nodoc
mixin _$CreateAnswerResponse {
  int get code => throw _privateConstructorUsedError;
  CreateAnswerResponseData get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateAnswerResponseCopyWith<CreateAnswerResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateAnswerResponseCopyWith<$Res> {
  factory $CreateAnswerResponseCopyWith(CreateAnswerResponse value,
          $Res Function(CreateAnswerResponse) then) =
      _$CreateAnswerResponseCopyWithImpl<$Res>;
  $Res call({int code, CreateAnswerResponseData data});

  $CreateAnswerResponseDataCopyWith<$Res> get data;
}

/// @nodoc
class _$CreateAnswerResponseCopyWithImpl<$Res>
    implements $CreateAnswerResponseCopyWith<$Res> {
  _$CreateAnswerResponseCopyWithImpl(this._value, this._then);

  final CreateAnswerResponse _value;
  // ignore: unused_field
  final $Res Function(CreateAnswerResponse) _then;

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
              as CreateAnswerResponseData,
    ));
  }

  @override
  $CreateAnswerResponseDataCopyWith<$Res> get data {
    return $CreateAnswerResponseDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
abstract class _$CreateAnswerResponseCopyWith<$Res>
    implements $CreateAnswerResponseCopyWith<$Res> {
  factory _$CreateAnswerResponseCopyWith(_CreateAnswerResponse value,
          $Res Function(_CreateAnswerResponse) then) =
      __$CreateAnswerResponseCopyWithImpl<$Res>;
  @override
  $Res call({int code, CreateAnswerResponseData data});

  @override
  $CreateAnswerResponseDataCopyWith<$Res> get data;
}

/// @nodoc
class __$CreateAnswerResponseCopyWithImpl<$Res>
    extends _$CreateAnswerResponseCopyWithImpl<$Res>
    implements _$CreateAnswerResponseCopyWith<$Res> {
  __$CreateAnswerResponseCopyWithImpl(
      _CreateAnswerResponse _value, $Res Function(_CreateAnswerResponse) _then)
      : super(_value, (v) => _then(v as _CreateAnswerResponse));

  @override
  _CreateAnswerResponse get _value => super._value as _CreateAnswerResponse;

  @override
  $Res call({
    Object? code = freezed,
    Object? data = freezed,
  }) {
    return _then(_CreateAnswerResponse(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CreateAnswerResponseData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CreateAnswerResponse
    with DiagnosticableTreeMixin
    implements _CreateAnswerResponse {
  const _$_CreateAnswerResponse({required this.code, required this.data});

  factory _$_CreateAnswerResponse.fromJson(Map<String, dynamic> json) =>
      _$$_CreateAnswerResponseFromJson(json);

  @override
  final int code;
  @override
  final CreateAnswerResponseData data;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CreateAnswerResponse(code: $code, data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CreateAnswerResponse'))
      ..add(DiagnosticsProperty('code', code))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CreateAnswerResponse &&
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
  _$CreateAnswerResponseCopyWith<_CreateAnswerResponse> get copyWith =>
      __$CreateAnswerResponseCopyWithImpl<_CreateAnswerResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CreateAnswerResponseToJson(this);
  }
}

abstract class _CreateAnswerResponse implements CreateAnswerResponse {
  const factory _CreateAnswerResponse(
      {required int code,
      required CreateAnswerResponseData data}) = _$_CreateAnswerResponse;

  factory _CreateAnswerResponse.fromJson(Map<String, dynamic> json) =
      _$_CreateAnswerResponse.fromJson;

  @override
  int get code => throw _privateConstructorUsedError;
  @override
  CreateAnswerResponseData get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CreateAnswerResponseCopyWith<_CreateAnswerResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

CreateAnswerResponseData _$CreateAnswerResponseDataFromJson(
    Map<String, dynamic> json) {
  return _CreateAnswerResponseData.fromJson(json);
}

/// @nodoc
class _$CreateAnswerResponseDataTearOff {
  const _$CreateAnswerResponseDataTearOff();

  _CreateAnswerResponseData call({required Answer answer}) {
    return _CreateAnswerResponseData(
      answer: answer,
    );
  }

  CreateAnswerResponseData fromJson(Map<String, Object> json) {
    return CreateAnswerResponseData.fromJson(json);
  }
}

/// @nodoc
const $CreateAnswerResponseData = _$CreateAnswerResponseDataTearOff();

/// @nodoc
mixin _$CreateAnswerResponseData {
  Answer get answer => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateAnswerResponseDataCopyWith<CreateAnswerResponseData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateAnswerResponseDataCopyWith<$Res> {
  factory $CreateAnswerResponseDataCopyWith(CreateAnswerResponseData value,
          $Res Function(CreateAnswerResponseData) then) =
      _$CreateAnswerResponseDataCopyWithImpl<$Res>;
  $Res call({Answer answer});

  $AnswerCopyWith<$Res> get answer;
}

/// @nodoc
class _$CreateAnswerResponseDataCopyWithImpl<$Res>
    implements $CreateAnswerResponseDataCopyWith<$Res> {
  _$CreateAnswerResponseDataCopyWithImpl(this._value, this._then);

  final CreateAnswerResponseData _value;
  // ignore: unused_field
  final $Res Function(CreateAnswerResponseData) _then;

  @override
  $Res call({
    Object? answer = freezed,
  }) {
    return _then(_value.copyWith(
      answer: answer == freezed
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as Answer,
    ));
  }

  @override
  $AnswerCopyWith<$Res> get answer {
    return $AnswerCopyWith<$Res>(_value.answer, (value) {
      return _then(_value.copyWith(answer: value));
    });
  }
}

/// @nodoc
abstract class _$CreateAnswerResponseDataCopyWith<$Res>
    implements $CreateAnswerResponseDataCopyWith<$Res> {
  factory _$CreateAnswerResponseDataCopyWith(_CreateAnswerResponseData value,
          $Res Function(_CreateAnswerResponseData) then) =
      __$CreateAnswerResponseDataCopyWithImpl<$Res>;
  @override
  $Res call({Answer answer});

  @override
  $AnswerCopyWith<$Res> get answer;
}

/// @nodoc
class __$CreateAnswerResponseDataCopyWithImpl<$Res>
    extends _$CreateAnswerResponseDataCopyWithImpl<$Res>
    implements _$CreateAnswerResponseDataCopyWith<$Res> {
  __$CreateAnswerResponseDataCopyWithImpl(_CreateAnswerResponseData _value,
      $Res Function(_CreateAnswerResponseData) _then)
      : super(_value, (v) => _then(v as _CreateAnswerResponseData));

  @override
  _CreateAnswerResponseData get _value =>
      super._value as _CreateAnswerResponseData;

  @override
  $Res call({
    Object? answer = freezed,
  }) {
    return _then(_CreateAnswerResponseData(
      answer: answer == freezed
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as Answer,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CreateAnswerResponseData
    with DiagnosticableTreeMixin
    implements _CreateAnswerResponseData {
  const _$_CreateAnswerResponseData({required this.answer});

  factory _$_CreateAnswerResponseData.fromJson(Map<String, dynamic> json) =>
      _$$_CreateAnswerResponseDataFromJson(json);

  @override
  final Answer answer;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CreateAnswerResponseData(answer: $answer)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CreateAnswerResponseData'))
      ..add(DiagnosticsProperty('answer', answer));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CreateAnswerResponseData &&
            (identical(other.answer, answer) ||
                const DeepCollectionEquality().equals(other.answer, answer)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(answer);

  @JsonKey(ignore: true)
  @override
  _$CreateAnswerResponseDataCopyWith<_CreateAnswerResponseData> get copyWith =>
      __$CreateAnswerResponseDataCopyWithImpl<_CreateAnswerResponseData>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CreateAnswerResponseDataToJson(this);
  }
}

abstract class _CreateAnswerResponseData implements CreateAnswerResponseData {
  const factory _CreateAnswerResponseData({required Answer answer}) =
      _$_CreateAnswerResponseData;

  factory _CreateAnswerResponseData.fromJson(Map<String, dynamic> json) =
      _$_CreateAnswerResponseData.fromJson;

  @override
  Answer get answer => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CreateAnswerResponseDataCopyWith<_CreateAnswerResponseData> get copyWith =>
      throw _privateConstructorUsedError;
}

FindAllAnswerRequest _$FindAllAnswerRequestFromJson(Map<String, dynamic> json) {
  return _FindAllAnswerRequest.fromJson(json);
}

/// @nodoc
class _$FindAllAnswerRequestTearOff {
  const _$FindAllAnswerRequestTearOff();

  _FindAllAnswerRequest call({required String problemId}) {
    return _FindAllAnswerRequest(
      problemId: problemId,
    );
  }

  FindAllAnswerRequest fromJson(Map<String, Object> json) {
    return FindAllAnswerRequest.fromJson(json);
  }
}

/// @nodoc
const $FindAllAnswerRequest = _$FindAllAnswerRequestTearOff();

/// @nodoc
mixin _$FindAllAnswerRequest {
  String get problemId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FindAllAnswerRequestCopyWith<FindAllAnswerRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FindAllAnswerRequestCopyWith<$Res> {
  factory $FindAllAnswerRequestCopyWith(FindAllAnswerRequest value,
          $Res Function(FindAllAnswerRequest) then) =
      _$FindAllAnswerRequestCopyWithImpl<$Res>;
  $Res call({String problemId});
}

/// @nodoc
class _$FindAllAnswerRequestCopyWithImpl<$Res>
    implements $FindAllAnswerRequestCopyWith<$Res> {
  _$FindAllAnswerRequestCopyWithImpl(this._value, this._then);

  final FindAllAnswerRequest _value;
  // ignore: unused_field
  final $Res Function(FindAllAnswerRequest) _then;

  @override
  $Res call({
    Object? problemId = freezed,
  }) {
    return _then(_value.copyWith(
      problemId: problemId == freezed
          ? _value.problemId
          : problemId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$FindAllAnswerRequestCopyWith<$Res>
    implements $FindAllAnswerRequestCopyWith<$Res> {
  factory _$FindAllAnswerRequestCopyWith(_FindAllAnswerRequest value,
          $Res Function(_FindAllAnswerRequest) then) =
      __$FindAllAnswerRequestCopyWithImpl<$Res>;
  @override
  $Res call({String problemId});
}

/// @nodoc
class __$FindAllAnswerRequestCopyWithImpl<$Res>
    extends _$FindAllAnswerRequestCopyWithImpl<$Res>
    implements _$FindAllAnswerRequestCopyWith<$Res> {
  __$FindAllAnswerRequestCopyWithImpl(
      _FindAllAnswerRequest _value, $Res Function(_FindAllAnswerRequest) _then)
      : super(_value, (v) => _then(v as _FindAllAnswerRequest));

  @override
  _FindAllAnswerRequest get _value => super._value as _FindAllAnswerRequest;

  @override
  $Res call({
    Object? problemId = freezed,
  }) {
    return _then(_FindAllAnswerRequest(
      problemId: problemId == freezed
          ? _value.problemId
          : problemId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FindAllAnswerRequest
    with DiagnosticableTreeMixin
    implements _FindAllAnswerRequest {
  const _$_FindAllAnswerRequest({required this.problemId});

  factory _$_FindAllAnswerRequest.fromJson(Map<String, dynamic> json) =>
      _$$_FindAllAnswerRequestFromJson(json);

  @override
  final String problemId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FindAllAnswerRequest(problemId: $problemId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FindAllAnswerRequest'))
      ..add(DiagnosticsProperty('problemId', problemId));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FindAllAnswerRequest &&
            (identical(other.problemId, problemId) ||
                const DeepCollectionEquality()
                    .equals(other.problemId, problemId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(problemId);

  @JsonKey(ignore: true)
  @override
  _$FindAllAnswerRequestCopyWith<_FindAllAnswerRequest> get copyWith =>
      __$FindAllAnswerRequestCopyWithImpl<_FindAllAnswerRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FindAllAnswerRequestToJson(this);
  }
}

abstract class _FindAllAnswerRequest implements FindAllAnswerRequest {
  const factory _FindAllAnswerRequest({required String problemId}) =
      _$_FindAllAnswerRequest;

  factory _FindAllAnswerRequest.fromJson(Map<String, dynamic> json) =
      _$_FindAllAnswerRequest.fromJson;

  @override
  String get problemId => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$FindAllAnswerRequestCopyWith<_FindAllAnswerRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

FindAllAnswerResponse _$FindAllAnswerResponseFromJson(
    Map<String, dynamic> json) {
  return _FindAllAnswerResponse.fromJson(json);
}

/// @nodoc
class _$FindAllAnswerResponseTearOff {
  const _$FindAllAnswerResponseTearOff();

  _FindAllAnswerResponse call(
      {required int code, required FindAllAnswerResponseData data}) {
    return _FindAllAnswerResponse(
      code: code,
      data: data,
    );
  }

  FindAllAnswerResponse fromJson(Map<String, Object> json) {
    return FindAllAnswerResponse.fromJson(json);
  }
}

/// @nodoc
const $FindAllAnswerResponse = _$FindAllAnswerResponseTearOff();

/// @nodoc
mixin _$FindAllAnswerResponse {
  int get code => throw _privateConstructorUsedError;
  FindAllAnswerResponseData get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FindAllAnswerResponseCopyWith<FindAllAnswerResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FindAllAnswerResponseCopyWith<$Res> {
  factory $FindAllAnswerResponseCopyWith(FindAllAnswerResponse value,
          $Res Function(FindAllAnswerResponse) then) =
      _$FindAllAnswerResponseCopyWithImpl<$Res>;
  $Res call({int code, FindAllAnswerResponseData data});

  $FindAllAnswerResponseDataCopyWith<$Res> get data;
}

/// @nodoc
class _$FindAllAnswerResponseCopyWithImpl<$Res>
    implements $FindAllAnswerResponseCopyWith<$Res> {
  _$FindAllAnswerResponseCopyWithImpl(this._value, this._then);

  final FindAllAnswerResponse _value;
  // ignore: unused_field
  final $Res Function(FindAllAnswerResponse) _then;

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
              as FindAllAnswerResponseData,
    ));
  }

  @override
  $FindAllAnswerResponseDataCopyWith<$Res> get data {
    return $FindAllAnswerResponseDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
abstract class _$FindAllAnswerResponseCopyWith<$Res>
    implements $FindAllAnswerResponseCopyWith<$Res> {
  factory _$FindAllAnswerResponseCopyWith(_FindAllAnswerResponse value,
          $Res Function(_FindAllAnswerResponse) then) =
      __$FindAllAnswerResponseCopyWithImpl<$Res>;
  @override
  $Res call({int code, FindAllAnswerResponseData data});

  @override
  $FindAllAnswerResponseDataCopyWith<$Res> get data;
}

/// @nodoc
class __$FindAllAnswerResponseCopyWithImpl<$Res>
    extends _$FindAllAnswerResponseCopyWithImpl<$Res>
    implements _$FindAllAnswerResponseCopyWith<$Res> {
  __$FindAllAnswerResponseCopyWithImpl(_FindAllAnswerResponse _value,
      $Res Function(_FindAllAnswerResponse) _then)
      : super(_value, (v) => _then(v as _FindAllAnswerResponse));

  @override
  _FindAllAnswerResponse get _value => super._value as _FindAllAnswerResponse;

  @override
  $Res call({
    Object? code = freezed,
    Object? data = freezed,
  }) {
    return _then(_FindAllAnswerResponse(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as FindAllAnswerResponseData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FindAllAnswerResponse
    with DiagnosticableTreeMixin
    implements _FindAllAnswerResponse {
  const _$_FindAllAnswerResponse({required this.code, required this.data});

  factory _$_FindAllAnswerResponse.fromJson(Map<String, dynamic> json) =>
      _$$_FindAllAnswerResponseFromJson(json);

  @override
  final int code;
  @override
  final FindAllAnswerResponseData data;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FindAllAnswerResponse(code: $code, data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FindAllAnswerResponse'))
      ..add(DiagnosticsProperty('code', code))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FindAllAnswerResponse &&
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
  _$FindAllAnswerResponseCopyWith<_FindAllAnswerResponse> get copyWith =>
      __$FindAllAnswerResponseCopyWithImpl<_FindAllAnswerResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FindAllAnswerResponseToJson(this);
  }
}

abstract class _FindAllAnswerResponse implements FindAllAnswerResponse {
  const factory _FindAllAnswerResponse(
      {required int code,
      required FindAllAnswerResponseData data}) = _$_FindAllAnswerResponse;

  factory _FindAllAnswerResponse.fromJson(Map<String, dynamic> json) =
      _$_FindAllAnswerResponse.fromJson;

  @override
  int get code => throw _privateConstructorUsedError;
  @override
  FindAllAnswerResponseData get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$FindAllAnswerResponseCopyWith<_FindAllAnswerResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

FindAllAnswerResponseData _$FindAllAnswerResponseDataFromJson(
    Map<String, dynamic> json) {
  return _FindAllAnswerResponseData.fromJson(json);
}

/// @nodoc
class _$FindAllAnswerResponseDataTearOff {
  const _$FindAllAnswerResponseDataTearOff();

  _FindAllAnswerResponseData call({required List<Answer> answers}) {
    return _FindAllAnswerResponseData(
      answers: answers,
    );
  }

  FindAllAnswerResponseData fromJson(Map<String, Object> json) {
    return FindAllAnswerResponseData.fromJson(json);
  }
}

/// @nodoc
const $FindAllAnswerResponseData = _$FindAllAnswerResponseDataTearOff();

/// @nodoc
mixin _$FindAllAnswerResponseData {
  List<Answer> get answers => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FindAllAnswerResponseDataCopyWith<FindAllAnswerResponseData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FindAllAnswerResponseDataCopyWith<$Res> {
  factory $FindAllAnswerResponseDataCopyWith(FindAllAnswerResponseData value,
          $Res Function(FindAllAnswerResponseData) then) =
      _$FindAllAnswerResponseDataCopyWithImpl<$Res>;
  $Res call({List<Answer> answers});
}

/// @nodoc
class _$FindAllAnswerResponseDataCopyWithImpl<$Res>
    implements $FindAllAnswerResponseDataCopyWith<$Res> {
  _$FindAllAnswerResponseDataCopyWithImpl(this._value, this._then);

  final FindAllAnswerResponseData _value;
  // ignore: unused_field
  final $Res Function(FindAllAnswerResponseData) _then;

  @override
  $Res call({
    Object? answers = freezed,
  }) {
    return _then(_value.copyWith(
      answers: answers == freezed
          ? _value.answers
          : answers // ignore: cast_nullable_to_non_nullable
              as List<Answer>,
    ));
  }
}

/// @nodoc
abstract class _$FindAllAnswerResponseDataCopyWith<$Res>
    implements $FindAllAnswerResponseDataCopyWith<$Res> {
  factory _$FindAllAnswerResponseDataCopyWith(_FindAllAnswerResponseData value,
          $Res Function(_FindAllAnswerResponseData) then) =
      __$FindAllAnswerResponseDataCopyWithImpl<$Res>;
  @override
  $Res call({List<Answer> answers});
}

/// @nodoc
class __$FindAllAnswerResponseDataCopyWithImpl<$Res>
    extends _$FindAllAnswerResponseDataCopyWithImpl<$Res>
    implements _$FindAllAnswerResponseDataCopyWith<$Res> {
  __$FindAllAnswerResponseDataCopyWithImpl(_FindAllAnswerResponseData _value,
      $Res Function(_FindAllAnswerResponseData) _then)
      : super(_value, (v) => _then(v as _FindAllAnswerResponseData));

  @override
  _FindAllAnswerResponseData get _value =>
      super._value as _FindAllAnswerResponseData;

  @override
  $Res call({
    Object? answers = freezed,
  }) {
    return _then(_FindAllAnswerResponseData(
      answers: answers == freezed
          ? _value.answers
          : answers // ignore: cast_nullable_to_non_nullable
              as List<Answer>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FindAllAnswerResponseData
    with DiagnosticableTreeMixin
    implements _FindAllAnswerResponseData {
  const _$_FindAllAnswerResponseData({required this.answers});

  factory _$_FindAllAnswerResponseData.fromJson(Map<String, dynamic> json) =>
      _$$_FindAllAnswerResponseDataFromJson(json);

  @override
  final List<Answer> answers;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FindAllAnswerResponseData(answers: $answers)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FindAllAnswerResponseData'))
      ..add(DiagnosticsProperty('answers', answers));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FindAllAnswerResponseData &&
            (identical(other.answers, answers) ||
                const DeepCollectionEquality().equals(other.answers, answers)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(answers);

  @JsonKey(ignore: true)
  @override
  _$FindAllAnswerResponseDataCopyWith<_FindAllAnswerResponseData>
      get copyWith =>
          __$FindAllAnswerResponseDataCopyWithImpl<_FindAllAnswerResponseData>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FindAllAnswerResponseDataToJson(this);
  }
}

abstract class _FindAllAnswerResponseData implements FindAllAnswerResponseData {
  const factory _FindAllAnswerResponseData({required List<Answer> answers}) =
      _$_FindAllAnswerResponseData;

  factory _FindAllAnswerResponseData.fromJson(Map<String, dynamic> json) =
      _$_FindAllAnswerResponseData.fromJson;

  @override
  List<Answer> get answers => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$FindAllAnswerResponseDataCopyWith<_FindAllAnswerResponseData>
      get copyWith => throw _privateConstructorUsedError;
}

UpdateAnswerRequest _$UpdateAnswerRequestFromJson(Map<String, dynamic> json) {
  return _UpdateAnswerRequest.fromJson(json);
}

/// @nodoc
class _$UpdateAnswerRequestTearOff {
  const _$UpdateAnswerRequestTearOff();

  _UpdateAnswerRequest call(
      {required String problemId,
      required String answerId,
      required int? point,
      required String? body}) {
    return _UpdateAnswerRequest(
      problemId: problemId,
      answerId: answerId,
      point: point,
      body: body,
    );
  }

  UpdateAnswerRequest fromJson(Map<String, Object> json) {
    return UpdateAnswerRequest.fromJson(json);
  }
}

/// @nodoc
const $UpdateAnswerRequest = _$UpdateAnswerRequestTearOff();

/// @nodoc
mixin _$UpdateAnswerRequest {
  String get problemId => throw _privateConstructorUsedError;
  String get answerId => throw _privateConstructorUsedError;
  int? get point => throw _privateConstructorUsedError;
  String? get body => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateAnswerRequestCopyWith<UpdateAnswerRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateAnswerRequestCopyWith<$Res> {
  factory $UpdateAnswerRequestCopyWith(
          UpdateAnswerRequest value, $Res Function(UpdateAnswerRequest) then) =
      _$UpdateAnswerRequestCopyWithImpl<$Res>;
  $Res call({String problemId, String answerId, int? point, String? body});
}

/// @nodoc
class _$UpdateAnswerRequestCopyWithImpl<$Res>
    implements $UpdateAnswerRequestCopyWith<$Res> {
  _$UpdateAnswerRequestCopyWithImpl(this._value, this._then);

  final UpdateAnswerRequest _value;
  // ignore: unused_field
  final $Res Function(UpdateAnswerRequest) _then;

  @override
  $Res call({
    Object? problemId = freezed,
    Object? answerId = freezed,
    Object? point = freezed,
    Object? body = freezed,
  }) {
    return _then(_value.copyWith(
      problemId: problemId == freezed
          ? _value.problemId
          : problemId // ignore: cast_nullable_to_non_nullable
              as String,
      answerId: answerId == freezed
          ? _value.answerId
          : answerId // ignore: cast_nullable_to_non_nullable
              as String,
      point: point == freezed
          ? _value.point
          : point // ignore: cast_nullable_to_non_nullable
              as int?,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$UpdateAnswerRequestCopyWith<$Res>
    implements $UpdateAnswerRequestCopyWith<$Res> {
  factory _$UpdateAnswerRequestCopyWith(_UpdateAnswerRequest value,
          $Res Function(_UpdateAnswerRequest) then) =
      __$UpdateAnswerRequestCopyWithImpl<$Res>;
  @override
  $Res call({String problemId, String answerId, int? point, String? body});
}

/// @nodoc
class __$UpdateAnswerRequestCopyWithImpl<$Res>
    extends _$UpdateAnswerRequestCopyWithImpl<$Res>
    implements _$UpdateAnswerRequestCopyWith<$Res> {
  __$UpdateAnswerRequestCopyWithImpl(
      _UpdateAnswerRequest _value, $Res Function(_UpdateAnswerRequest) _then)
      : super(_value, (v) => _then(v as _UpdateAnswerRequest));

  @override
  _UpdateAnswerRequest get _value => super._value as _UpdateAnswerRequest;

  @override
  $Res call({
    Object? problemId = freezed,
    Object? answerId = freezed,
    Object? point = freezed,
    Object? body = freezed,
  }) {
    return _then(_UpdateAnswerRequest(
      problemId: problemId == freezed
          ? _value.problemId
          : problemId // ignore: cast_nullable_to_non_nullable
              as String,
      answerId: answerId == freezed
          ? _value.answerId
          : answerId // ignore: cast_nullable_to_non_nullable
              as String,
      point: point == freezed
          ? _value.point
          : point // ignore: cast_nullable_to_non_nullable
              as int?,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UpdateAnswerRequest
    with DiagnosticableTreeMixin
    implements _UpdateAnswerRequest {
  const _$_UpdateAnswerRequest(
      {required this.problemId,
      required this.answerId,
      required this.point,
      required this.body});

  factory _$_UpdateAnswerRequest.fromJson(Map<String, dynamic> json) =>
      _$$_UpdateAnswerRequestFromJson(json);

  @override
  final String problemId;
  @override
  final String answerId;
  @override
  final int? point;
  @override
  final String? body;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UpdateAnswerRequest(problemId: $problemId, answerId: $answerId, point: $point, body: $body)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UpdateAnswerRequest'))
      ..add(DiagnosticsProperty('problemId', problemId))
      ..add(DiagnosticsProperty('answerId', answerId))
      ..add(DiagnosticsProperty('point', point))
      ..add(DiagnosticsProperty('body', body));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UpdateAnswerRequest &&
            (identical(other.problemId, problemId) ||
                const DeepCollectionEquality()
                    .equals(other.problemId, problemId)) &&
            (identical(other.answerId, answerId) ||
                const DeepCollectionEquality()
                    .equals(other.answerId, answerId)) &&
            (identical(other.point, point) ||
                const DeepCollectionEquality().equals(other.point, point)) &&
            (identical(other.body, body) ||
                const DeepCollectionEquality().equals(other.body, body)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(problemId) ^
      const DeepCollectionEquality().hash(answerId) ^
      const DeepCollectionEquality().hash(point) ^
      const DeepCollectionEquality().hash(body);

  @JsonKey(ignore: true)
  @override
  _$UpdateAnswerRequestCopyWith<_UpdateAnswerRequest> get copyWith =>
      __$UpdateAnswerRequestCopyWithImpl<_UpdateAnswerRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UpdateAnswerRequestToJson(this);
  }
}

abstract class _UpdateAnswerRequest implements UpdateAnswerRequest {
  const factory _UpdateAnswerRequest(
      {required String problemId,
      required String answerId,
      required int? point,
      required String? body}) = _$_UpdateAnswerRequest;

  factory _UpdateAnswerRequest.fromJson(Map<String, dynamic> json) =
      _$_UpdateAnswerRequest.fromJson;

  @override
  String get problemId => throw _privateConstructorUsedError;
  @override
  String get answerId => throw _privateConstructorUsedError;
  @override
  int? get point => throw _privateConstructorUsedError;
  @override
  String? get body => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UpdateAnswerRequestCopyWith<_UpdateAnswerRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

UpdateAnswerResponse _$UpdateAnswerResponseFromJson(Map<String, dynamic> json) {
  return _UpdateAnswerResponse.fromJson(json);
}

/// @nodoc
class _$UpdateAnswerResponseTearOff {
  const _$UpdateAnswerResponseTearOff();

  _UpdateAnswerResponse call(
      {required int code, required UpdateAnswerResponseData data}) {
    return _UpdateAnswerResponse(
      code: code,
      data: data,
    );
  }

  UpdateAnswerResponse fromJson(Map<String, Object> json) {
    return UpdateAnswerResponse.fromJson(json);
  }
}

/// @nodoc
const $UpdateAnswerResponse = _$UpdateAnswerResponseTearOff();

/// @nodoc
mixin _$UpdateAnswerResponse {
  int get code => throw _privateConstructorUsedError;
  UpdateAnswerResponseData get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateAnswerResponseCopyWith<UpdateAnswerResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateAnswerResponseCopyWith<$Res> {
  factory $UpdateAnswerResponseCopyWith(UpdateAnswerResponse value,
          $Res Function(UpdateAnswerResponse) then) =
      _$UpdateAnswerResponseCopyWithImpl<$Res>;
  $Res call({int code, UpdateAnswerResponseData data});

  $UpdateAnswerResponseDataCopyWith<$Res> get data;
}

/// @nodoc
class _$UpdateAnswerResponseCopyWithImpl<$Res>
    implements $UpdateAnswerResponseCopyWith<$Res> {
  _$UpdateAnswerResponseCopyWithImpl(this._value, this._then);

  final UpdateAnswerResponse _value;
  // ignore: unused_field
  final $Res Function(UpdateAnswerResponse) _then;

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
              as UpdateAnswerResponseData,
    ));
  }

  @override
  $UpdateAnswerResponseDataCopyWith<$Res> get data {
    return $UpdateAnswerResponseDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
abstract class _$UpdateAnswerResponseCopyWith<$Res>
    implements $UpdateAnswerResponseCopyWith<$Res> {
  factory _$UpdateAnswerResponseCopyWith(_UpdateAnswerResponse value,
          $Res Function(_UpdateAnswerResponse) then) =
      __$UpdateAnswerResponseCopyWithImpl<$Res>;
  @override
  $Res call({int code, UpdateAnswerResponseData data});

  @override
  $UpdateAnswerResponseDataCopyWith<$Res> get data;
}

/// @nodoc
class __$UpdateAnswerResponseCopyWithImpl<$Res>
    extends _$UpdateAnswerResponseCopyWithImpl<$Res>
    implements _$UpdateAnswerResponseCopyWith<$Res> {
  __$UpdateAnswerResponseCopyWithImpl(
      _UpdateAnswerResponse _value, $Res Function(_UpdateAnswerResponse) _then)
      : super(_value, (v) => _then(v as _UpdateAnswerResponse));

  @override
  _UpdateAnswerResponse get _value => super._value as _UpdateAnswerResponse;

  @override
  $Res call({
    Object? code = freezed,
    Object? data = freezed,
  }) {
    return _then(_UpdateAnswerResponse(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as UpdateAnswerResponseData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UpdateAnswerResponse
    with DiagnosticableTreeMixin
    implements _UpdateAnswerResponse {
  const _$_UpdateAnswerResponse({required this.code, required this.data});

  factory _$_UpdateAnswerResponse.fromJson(Map<String, dynamic> json) =>
      _$$_UpdateAnswerResponseFromJson(json);

  @override
  final int code;
  @override
  final UpdateAnswerResponseData data;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UpdateAnswerResponse(code: $code, data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UpdateAnswerResponse'))
      ..add(DiagnosticsProperty('code', code))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UpdateAnswerResponse &&
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
  _$UpdateAnswerResponseCopyWith<_UpdateAnswerResponse> get copyWith =>
      __$UpdateAnswerResponseCopyWithImpl<_UpdateAnswerResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UpdateAnswerResponseToJson(this);
  }
}

abstract class _UpdateAnswerResponse implements UpdateAnswerResponse {
  const factory _UpdateAnswerResponse(
      {required int code,
      required UpdateAnswerResponseData data}) = _$_UpdateAnswerResponse;

  factory _UpdateAnswerResponse.fromJson(Map<String, dynamic> json) =
      _$_UpdateAnswerResponse.fromJson;

  @override
  int get code => throw _privateConstructorUsedError;
  @override
  UpdateAnswerResponseData get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UpdateAnswerResponseCopyWith<_UpdateAnswerResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

UpdateAnswerResponseData _$UpdateAnswerResponseDataFromJson(
    Map<String, dynamic> json) {
  return _UpdateAnswerResponseData.fromJson(json);
}

/// @nodoc
class _$UpdateAnswerResponseDataTearOff {
  const _$UpdateAnswerResponseDataTearOff();

  _UpdateAnswerResponseData call({required Answer answer}) {
    return _UpdateAnswerResponseData(
      answer: answer,
    );
  }

  UpdateAnswerResponseData fromJson(Map<String, Object> json) {
    return UpdateAnswerResponseData.fromJson(json);
  }
}

/// @nodoc
const $UpdateAnswerResponseData = _$UpdateAnswerResponseDataTearOff();

/// @nodoc
mixin _$UpdateAnswerResponseData {
  Answer get answer => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateAnswerResponseDataCopyWith<UpdateAnswerResponseData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateAnswerResponseDataCopyWith<$Res> {
  factory $UpdateAnswerResponseDataCopyWith(UpdateAnswerResponseData value,
          $Res Function(UpdateAnswerResponseData) then) =
      _$UpdateAnswerResponseDataCopyWithImpl<$Res>;
  $Res call({Answer answer});

  $AnswerCopyWith<$Res> get answer;
}

/// @nodoc
class _$UpdateAnswerResponseDataCopyWithImpl<$Res>
    implements $UpdateAnswerResponseDataCopyWith<$Res> {
  _$UpdateAnswerResponseDataCopyWithImpl(this._value, this._then);

  final UpdateAnswerResponseData _value;
  // ignore: unused_field
  final $Res Function(UpdateAnswerResponseData) _then;

  @override
  $Res call({
    Object? answer = freezed,
  }) {
    return _then(_value.copyWith(
      answer: answer == freezed
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as Answer,
    ));
  }

  @override
  $AnswerCopyWith<$Res> get answer {
    return $AnswerCopyWith<$Res>(_value.answer, (value) {
      return _then(_value.copyWith(answer: value));
    });
  }
}

/// @nodoc
abstract class _$UpdateAnswerResponseDataCopyWith<$Res>
    implements $UpdateAnswerResponseDataCopyWith<$Res> {
  factory _$UpdateAnswerResponseDataCopyWith(_UpdateAnswerResponseData value,
          $Res Function(_UpdateAnswerResponseData) then) =
      __$UpdateAnswerResponseDataCopyWithImpl<$Res>;
  @override
  $Res call({Answer answer});

  @override
  $AnswerCopyWith<$Res> get answer;
}

/// @nodoc
class __$UpdateAnswerResponseDataCopyWithImpl<$Res>
    extends _$UpdateAnswerResponseDataCopyWithImpl<$Res>
    implements _$UpdateAnswerResponseDataCopyWith<$Res> {
  __$UpdateAnswerResponseDataCopyWithImpl(_UpdateAnswerResponseData _value,
      $Res Function(_UpdateAnswerResponseData) _then)
      : super(_value, (v) => _then(v as _UpdateAnswerResponseData));

  @override
  _UpdateAnswerResponseData get _value =>
      super._value as _UpdateAnswerResponseData;

  @override
  $Res call({
    Object? answer = freezed,
  }) {
    return _then(_UpdateAnswerResponseData(
      answer: answer == freezed
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as Answer,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UpdateAnswerResponseData
    with DiagnosticableTreeMixin
    implements _UpdateAnswerResponseData {
  const _$_UpdateAnswerResponseData({required this.answer});

  factory _$_UpdateAnswerResponseData.fromJson(Map<String, dynamic> json) =>
      _$$_UpdateAnswerResponseDataFromJson(json);

  @override
  final Answer answer;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UpdateAnswerResponseData(answer: $answer)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UpdateAnswerResponseData'))
      ..add(DiagnosticsProperty('answer', answer));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UpdateAnswerResponseData &&
            (identical(other.answer, answer) ||
                const DeepCollectionEquality().equals(other.answer, answer)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(answer);

  @JsonKey(ignore: true)
  @override
  _$UpdateAnswerResponseDataCopyWith<_UpdateAnswerResponseData> get copyWith =>
      __$UpdateAnswerResponseDataCopyWithImpl<_UpdateAnswerResponseData>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UpdateAnswerResponseDataToJson(this);
  }
}

abstract class _UpdateAnswerResponseData implements UpdateAnswerResponseData {
  const factory _UpdateAnswerResponseData({required Answer answer}) =
      _$_UpdateAnswerResponseData;

  factory _UpdateAnswerResponseData.fromJson(Map<String, dynamic> json) =
      _$_UpdateAnswerResponseData.fromJson;

  @override
  Answer get answer => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UpdateAnswerResponseDataCopyWith<_UpdateAnswerResponseData> get copyWith =>
      throw _privateConstructorUsedError;
}
