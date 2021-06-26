// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'sign_out_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SignOutResponse _$SignOutResponseFromJson(Map<String, dynamic> json) {
  return _SignOutResponse.fromJson(json);
}

/// @nodoc
class _$SignOutResponseTearOff {
  const _$SignOutResponseTearOff();

  _SignOutResponse call({required int code}) {
    return _SignOutResponse(
      code: code,
    );
  }

  SignOutResponse fromJson(Map<String, Object> json) {
    return SignOutResponse.fromJson(json);
  }
}

/// @nodoc
const $SignOutResponse = _$SignOutResponseTearOff();

/// @nodoc
mixin _$SignOutResponse {
  int get code => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SignOutResponseCopyWith<SignOutResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignOutResponseCopyWith<$Res> {
  factory $SignOutResponseCopyWith(
          SignOutResponse value, $Res Function(SignOutResponse) then) =
      _$SignOutResponseCopyWithImpl<$Res>;
  $Res call({int code});
}

/// @nodoc
class _$SignOutResponseCopyWithImpl<$Res>
    implements $SignOutResponseCopyWith<$Res> {
  _$SignOutResponseCopyWithImpl(this._value, this._then);

  final SignOutResponse _value;
  // ignore: unused_field
  final $Res Function(SignOutResponse) _then;

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
abstract class _$SignOutResponseCopyWith<$Res>
    implements $SignOutResponseCopyWith<$Res> {
  factory _$SignOutResponseCopyWith(
          _SignOutResponse value, $Res Function(_SignOutResponse) then) =
      __$SignOutResponseCopyWithImpl<$Res>;
  @override
  $Res call({int code});
}

/// @nodoc
class __$SignOutResponseCopyWithImpl<$Res>
    extends _$SignOutResponseCopyWithImpl<$Res>
    implements _$SignOutResponseCopyWith<$Res> {
  __$SignOutResponseCopyWithImpl(
      _SignOutResponse _value, $Res Function(_SignOutResponse) _then)
      : super(_value, (v) => _then(v as _SignOutResponse));

  @override
  _SignOutResponse get _value => super._value as _SignOutResponse;

  @override
  $Res call({
    Object? code = freezed,
  }) {
    return _then(_SignOutResponse(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SignOutResponse
    with DiagnosticableTreeMixin
    implements _SignOutResponse {
  const _$_SignOutResponse({required this.code});

  factory _$_SignOutResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_SignOutResponseFromJson(json);

  @override
  final int code;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignOutResponse(code: $code)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SignOutResponse'))
      ..add(DiagnosticsProperty('code', code));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SignOutResponse &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(code);

  @JsonKey(ignore: true)
  @override
  _$SignOutResponseCopyWith<_SignOutResponse> get copyWith =>
      __$SignOutResponseCopyWithImpl<_SignOutResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_SignOutResponseToJson(this);
  }
}

abstract class _SignOutResponse implements SignOutResponse {
  const factory _SignOutResponse({required int code}) = _$_SignOutResponse;

  factory _SignOutResponse.fromJson(Map<String, dynamic> json) =
      _$_SignOutResponse.fromJson;

  @override
  int get code => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SignOutResponseCopyWith<_SignOutResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
