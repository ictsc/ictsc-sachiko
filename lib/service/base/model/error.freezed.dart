// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'error.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Error _$ErrorFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType'] as String?) {
    case 'unauthorisedRequest':
      return _UnauthorisedRequest.fromJson(json);
    case 'requestError':
      return _RequestError.fromJson(json);
    case 'unexpectedError':
      return _UnexpectedError.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'Error',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
class _$ErrorTearOff {
  const _$ErrorTearOff();

  _UnauthorisedRequest unauthorisedRequest() {
    return const _UnauthorisedRequest();
  }

  _RequestError requestError({required ApiError apiError}) {
    return _RequestError(
      apiError: apiError,
    );
  }

  _UnexpectedError unexpectedError() {
    return const _UnexpectedError();
  }

  Error fromJson(Map<String, Object> json) {
    return Error.fromJson(json);
  }
}

/// @nodoc
const $Error = _$ErrorTearOff();

/// @nodoc
mixin _$Error {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unauthorisedRequest,
    required TResult Function(ApiError apiError) requestError,
    required TResult Function() unexpectedError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? unauthorisedRequest,
    TResult Function(ApiError apiError)? requestError,
    TResult Function()? unexpectedError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unauthorisedRequest,
    TResult Function(ApiError apiError)? requestError,
    TResult Function()? unexpectedError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UnauthorisedRequest value) unauthorisedRequest,
    required TResult Function(_RequestError value) requestError,
    required TResult Function(_UnexpectedError value) unexpectedError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_UnauthorisedRequest value)? unauthorisedRequest,
    TResult Function(_RequestError value)? requestError,
    TResult Function(_UnexpectedError value)? unexpectedError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UnauthorisedRequest value)? unauthorisedRequest,
    TResult Function(_RequestError value)? requestError,
    TResult Function(_UnexpectedError value)? unexpectedError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ErrorCopyWith<$Res> {
  factory $ErrorCopyWith(Error value, $Res Function(Error) then) =
      _$ErrorCopyWithImpl<$Res>;
}

/// @nodoc
class _$ErrorCopyWithImpl<$Res> implements $ErrorCopyWith<$Res> {
  _$ErrorCopyWithImpl(this._value, this._then);

  final Error _value;
  // ignore: unused_field
  final $Res Function(Error) _then;
}

/// @nodoc
abstract class _$UnauthorisedRequestCopyWith<$Res> {
  factory _$UnauthorisedRequestCopyWith(_UnauthorisedRequest value,
          $Res Function(_UnauthorisedRequest) then) =
      __$UnauthorisedRequestCopyWithImpl<$Res>;
}

/// @nodoc
class __$UnauthorisedRequestCopyWithImpl<$Res> extends _$ErrorCopyWithImpl<$Res>
    implements _$UnauthorisedRequestCopyWith<$Res> {
  __$UnauthorisedRequestCopyWithImpl(
      _UnauthorisedRequest _value, $Res Function(_UnauthorisedRequest) _then)
      : super(_value, (v) => _then(v as _UnauthorisedRequest));

  @override
  _UnauthorisedRequest get _value => super._value as _UnauthorisedRequest;
}

/// @nodoc
@JsonSerializable()
class _$_UnauthorisedRequest extends _UnauthorisedRequest
    with DiagnosticableTreeMixin {
  const _$_UnauthorisedRequest() : super._();

  factory _$_UnauthorisedRequest.fromJson(Map<String, dynamic> json) =>
      _$$_UnauthorisedRequestFromJson(json);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Error.unauthorisedRequest()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'Error.unauthorisedRequest'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _UnauthorisedRequest);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unauthorisedRequest,
    required TResult Function(ApiError apiError) requestError,
    required TResult Function() unexpectedError,
  }) {
    return unauthorisedRequest();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? unauthorisedRequest,
    TResult Function(ApiError apiError)? requestError,
    TResult Function()? unexpectedError,
  }) {
    return unauthorisedRequest?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unauthorisedRequest,
    TResult Function(ApiError apiError)? requestError,
    TResult Function()? unexpectedError,
    required TResult orElse(),
  }) {
    if (unauthorisedRequest != null) {
      return unauthorisedRequest();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UnauthorisedRequest value) unauthorisedRequest,
    required TResult Function(_RequestError value) requestError,
    required TResult Function(_UnexpectedError value) unexpectedError,
  }) {
    return unauthorisedRequest(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_UnauthorisedRequest value)? unauthorisedRequest,
    TResult Function(_RequestError value)? requestError,
    TResult Function(_UnexpectedError value)? unexpectedError,
  }) {
    return unauthorisedRequest?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UnauthorisedRequest value)? unauthorisedRequest,
    TResult Function(_RequestError value)? requestError,
    TResult Function(_UnexpectedError value)? unexpectedError,
    required TResult orElse(),
  }) {
    if (unauthorisedRequest != null) {
      return unauthorisedRequest(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_UnauthorisedRequestToJson(this)
      ..['runtimeType'] = 'unauthorisedRequest';
  }
}

abstract class _UnauthorisedRequest extends Error {
  const factory _UnauthorisedRequest() = _$_UnauthorisedRequest;
  const _UnauthorisedRequest._() : super._();

  factory _UnauthorisedRequest.fromJson(Map<String, dynamic> json) =
      _$_UnauthorisedRequest.fromJson;
}

/// @nodoc
abstract class _$RequestErrorCopyWith<$Res> {
  factory _$RequestErrorCopyWith(
          _RequestError value, $Res Function(_RequestError) then) =
      __$RequestErrorCopyWithImpl<$Res>;
  $Res call({ApiError apiError});

  $ApiErrorCopyWith<$Res> get apiError;
}

/// @nodoc
class __$RequestErrorCopyWithImpl<$Res> extends _$ErrorCopyWithImpl<$Res>
    implements _$RequestErrorCopyWith<$Res> {
  __$RequestErrorCopyWithImpl(
      _RequestError _value, $Res Function(_RequestError) _then)
      : super(_value, (v) => _then(v as _RequestError));

  @override
  _RequestError get _value => super._value as _RequestError;

  @override
  $Res call({
    Object? apiError = freezed,
  }) {
    return _then(_RequestError(
      apiError: apiError == freezed
          ? _value.apiError
          : apiError // ignore: cast_nullable_to_non_nullable
              as ApiError,
    ));
  }

  @override
  $ApiErrorCopyWith<$Res> get apiError {
    return $ApiErrorCopyWith<$Res>(_value.apiError, (value) {
      return _then(_value.copyWith(apiError: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$_RequestError extends _RequestError with DiagnosticableTreeMixin {
  const _$_RequestError({required this.apiError}) : super._();

  factory _$_RequestError.fromJson(Map<String, dynamic> json) =>
      _$$_RequestErrorFromJson(json);

  @override
  final ApiError apiError;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Error.requestError(apiError: $apiError)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Error.requestError'))
      ..add(DiagnosticsProperty('apiError', apiError));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RequestError &&
            (identical(other.apiError, apiError) ||
                const DeepCollectionEquality()
                    .equals(other.apiError, apiError)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(apiError);

  @JsonKey(ignore: true)
  @override
  _$RequestErrorCopyWith<_RequestError> get copyWith =>
      __$RequestErrorCopyWithImpl<_RequestError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unauthorisedRequest,
    required TResult Function(ApiError apiError) requestError,
    required TResult Function() unexpectedError,
  }) {
    return requestError(apiError);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? unauthorisedRequest,
    TResult Function(ApiError apiError)? requestError,
    TResult Function()? unexpectedError,
  }) {
    return requestError?.call(apiError);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unauthorisedRequest,
    TResult Function(ApiError apiError)? requestError,
    TResult Function()? unexpectedError,
    required TResult orElse(),
  }) {
    if (requestError != null) {
      return requestError(apiError);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UnauthorisedRequest value) unauthorisedRequest,
    required TResult Function(_RequestError value) requestError,
    required TResult Function(_UnexpectedError value) unexpectedError,
  }) {
    return requestError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_UnauthorisedRequest value)? unauthorisedRequest,
    TResult Function(_RequestError value)? requestError,
    TResult Function(_UnexpectedError value)? unexpectedError,
  }) {
    return requestError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UnauthorisedRequest value)? unauthorisedRequest,
    TResult Function(_RequestError value)? requestError,
    TResult Function(_UnexpectedError value)? unexpectedError,
    required TResult orElse(),
  }) {
    if (requestError != null) {
      return requestError(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_RequestErrorToJson(this)..['runtimeType'] = 'requestError';
  }
}

abstract class _RequestError extends Error {
  const factory _RequestError({required ApiError apiError}) = _$_RequestError;
  const _RequestError._() : super._();

  factory _RequestError.fromJson(Map<String, dynamic> json) =
      _$_RequestError.fromJson;

  ApiError get apiError => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$RequestErrorCopyWith<_RequestError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$UnexpectedErrorCopyWith<$Res> {
  factory _$UnexpectedErrorCopyWith(
          _UnexpectedError value, $Res Function(_UnexpectedError) then) =
      __$UnexpectedErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$UnexpectedErrorCopyWithImpl<$Res> extends _$ErrorCopyWithImpl<$Res>
    implements _$UnexpectedErrorCopyWith<$Res> {
  __$UnexpectedErrorCopyWithImpl(
      _UnexpectedError _value, $Res Function(_UnexpectedError) _then)
      : super(_value, (v) => _then(v as _UnexpectedError));

  @override
  _UnexpectedError get _value => super._value as _UnexpectedError;
}

/// @nodoc
@JsonSerializable()
class _$_UnexpectedError extends _UnexpectedError with DiagnosticableTreeMixin {
  const _$_UnexpectedError() : super._();

  factory _$_UnexpectedError.fromJson(Map<String, dynamic> json) =>
      _$$_UnexpectedErrorFromJson(json);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Error.unexpectedError()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'Error.unexpectedError'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _UnexpectedError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unauthorisedRequest,
    required TResult Function(ApiError apiError) requestError,
    required TResult Function() unexpectedError,
  }) {
    return unexpectedError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? unauthorisedRequest,
    TResult Function(ApiError apiError)? requestError,
    TResult Function()? unexpectedError,
  }) {
    return unexpectedError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unauthorisedRequest,
    TResult Function(ApiError apiError)? requestError,
    TResult Function()? unexpectedError,
    required TResult orElse(),
  }) {
    if (unexpectedError != null) {
      return unexpectedError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UnauthorisedRequest value) unauthorisedRequest,
    required TResult Function(_RequestError value) requestError,
    required TResult Function(_UnexpectedError value) unexpectedError,
  }) {
    return unexpectedError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_UnauthorisedRequest value)? unauthorisedRequest,
    TResult Function(_RequestError value)? requestError,
    TResult Function(_UnexpectedError value)? unexpectedError,
  }) {
    return unexpectedError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UnauthorisedRequest value)? unauthorisedRequest,
    TResult Function(_RequestError value)? requestError,
    TResult Function(_UnexpectedError value)? unexpectedError,
    required TResult orElse(),
  }) {
    if (unexpectedError != null) {
      return unexpectedError(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_UnexpectedErrorToJson(this)..['runtimeType'] = 'unexpectedError';
  }
}

abstract class _UnexpectedError extends Error {
  const factory _UnexpectedError() = _$_UnexpectedError;
  const _UnexpectedError._() : super._();

  factory _UnexpectedError.fromJson(Map<String, dynamic> json) =
      _$_UnexpectedError.fromJson;
}

ApiError _$ApiErrorFromJson(Map<String, dynamic> json) {
  return _ApiError.fromJson(json);
}

/// @nodoc
class _$ApiErrorTearOff {
  const _$ApiErrorTearOff();

  _ApiError call({@JsonKey(name: 'error') required String message}) {
    return _ApiError(
      message: message,
    );
  }

  ApiError fromJson(Map<String, Object> json) {
    return ApiError.fromJson(json);
  }
}

/// @nodoc
const $ApiError = _$ApiErrorTearOff();

/// @nodoc
mixin _$ApiError {
  @JsonKey(name: 'error')
  String get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApiErrorCopyWith<ApiError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiErrorCopyWith<$Res> {
  factory $ApiErrorCopyWith(ApiError value, $Res Function(ApiError) then) =
      _$ApiErrorCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'error') String message});
}

/// @nodoc
class _$ApiErrorCopyWithImpl<$Res> implements $ApiErrorCopyWith<$Res> {
  _$ApiErrorCopyWithImpl(this._value, this._then);

  final ApiError _value;
  // ignore: unused_field
  final $Res Function(ApiError) _then;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$ApiErrorCopyWith<$Res> implements $ApiErrorCopyWith<$Res> {
  factory _$ApiErrorCopyWith(_ApiError value, $Res Function(_ApiError) then) =
      __$ApiErrorCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'error') String message});
}

/// @nodoc
class __$ApiErrorCopyWithImpl<$Res> extends _$ApiErrorCopyWithImpl<$Res>
    implements _$ApiErrorCopyWith<$Res> {
  __$ApiErrorCopyWithImpl(_ApiError _value, $Res Function(_ApiError) _then)
      : super(_value, (v) => _then(v as _ApiError));

  @override
  _ApiError get _value => super._value as _ApiError;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_ApiError(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ApiError with DiagnosticableTreeMixin implements _ApiError {
  const _$_ApiError({@JsonKey(name: 'error') required this.message});

  factory _$_ApiError.fromJson(Map<String, dynamic> json) =>
      _$$_ApiErrorFromJson(json);

  @override
  @JsonKey(name: 'error')
  final String message;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ApiError(message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ApiError'))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ApiError &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  _$ApiErrorCopyWith<_ApiError> get copyWith =>
      __$ApiErrorCopyWithImpl<_ApiError>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ApiErrorToJson(this);
  }
}

abstract class _ApiError implements ApiError {
  const factory _ApiError({@JsonKey(name: 'error') required String message}) =
      _$_ApiError;

  factory _ApiError.fromJson(Map<String, dynamic> json) = _$_ApiError.fromJson;

  @override
  @JsonKey(name: 'error')
  String get message => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ApiErrorCopyWith<_ApiError> get copyWith =>
      throw _privateConstructorUsedError;
}
