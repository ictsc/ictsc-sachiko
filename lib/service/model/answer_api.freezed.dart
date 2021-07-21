// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

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

  _CreateAnswerRequest call({required String problemId, required String body}) {
    return _CreateAnswerRequest(
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
  $Res call({String problemId, String body});
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
    Object? problemId = freezed,
    Object? body = freezed,
  }) {
    return _then(_value.copyWith(
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
  $Res call({String problemId, String body});
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
    Object? problemId = freezed,
    Object? body = freezed,
  }) {
    return _then(_CreateAnswerRequest(
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
  const _$_CreateAnswerRequest({required this.problemId, required this.body});

  factory _$_CreateAnswerRequest.fromJson(Map<String, dynamic> json) =>
      _$_$_CreateAnswerRequestFromJson(json);

  @override
  final String problemId;
  @override
  final String body;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CreateAnswerRequest(problemId: $problemId, body: $body)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CreateAnswerRequest'))
      ..add(DiagnosticsProperty('problemId', problemId))
      ..add(DiagnosticsProperty('body', body));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CreateAnswerRequest &&
            (identical(other.problemId, problemId) ||
                const DeepCollectionEquality()
                    .equals(other.problemId, problemId)) &&
            (identical(other.body, body) ||
                const DeepCollectionEquality().equals(other.body, body)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(problemId) ^
      const DeepCollectionEquality().hash(body);

  @JsonKey(ignore: true)
  @override
  _$CreateAnswerRequestCopyWith<_CreateAnswerRequest> get copyWith =>
      __$CreateAnswerRequestCopyWithImpl<_CreateAnswerRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CreateAnswerRequestToJson(this);
  }
}

abstract class _CreateAnswerRequest implements CreateAnswerRequest {
  const factory _CreateAnswerRequest(
      {required String problemId,
      required String body}) = _$_CreateAnswerRequest;

  factory _CreateAnswerRequest.fromJson(Map<String, dynamic> json) =
      _$_CreateAnswerRequest.fromJson;

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
      _$_$_CreateAnswerResponseFromJson(json);

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
    return _$_$_CreateAnswerResponseToJson(this);
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
      _$_$_CreateAnswerResponseDataFromJson(json);

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
    return _$_$_CreateAnswerResponseDataToJson(this);
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
