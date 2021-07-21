// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'create_answer_request.dart';

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
