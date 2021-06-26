// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'sign_up_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SignUpRequest _$SignUpRequestFromJson(Map<String, dynamic> json) {
  return _SignUpRequest.fromJson(json);
}

/// @nodoc
class _$SignUpRequestTearOff {
  const _$SignUpRequestTearOff();

  _SignUpRequest call(
      {@JsonKey(name: 'name') required String userName,
      required String password}) {
    return _SignUpRequest(
      userName: userName,
      password: password,
    );
  }

  SignUpRequest fromJson(Map<String, Object> json) {
    return SignUpRequest.fromJson(json);
  }
}

/// @nodoc
const $SignUpRequest = _$SignUpRequestTearOff();

/// @nodoc
mixin _$SignUpRequest {
  @JsonKey(name: 'name')
  String get userName => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SignUpRequestCopyWith<SignUpRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpRequestCopyWith<$Res> {
  factory $SignUpRequestCopyWith(
          SignUpRequest value, $Res Function(SignUpRequest) then) =
      _$SignUpRequestCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'name') String userName, String password});
}

/// @nodoc
class _$SignUpRequestCopyWithImpl<$Res>
    implements $SignUpRequestCopyWith<$Res> {
  _$SignUpRequestCopyWithImpl(this._value, this._then);

  final SignUpRequest _value;
  // ignore: unused_field
  final $Res Function(SignUpRequest) _then;

  @override
  $Res call({
    Object? userName = freezed,
    Object? password = freezed,
  }) {
    return _then(_value.copyWith(
      userName: userName == freezed
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$SignUpRequestCopyWith<$Res>
    implements $SignUpRequestCopyWith<$Res> {
  factory _$SignUpRequestCopyWith(
          _SignUpRequest value, $Res Function(_SignUpRequest) then) =
      __$SignUpRequestCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'name') String userName, String password});
}

/// @nodoc
class __$SignUpRequestCopyWithImpl<$Res>
    extends _$SignUpRequestCopyWithImpl<$Res>
    implements _$SignUpRequestCopyWith<$Res> {
  __$SignUpRequestCopyWithImpl(
      _SignUpRequest _value, $Res Function(_SignUpRequest) _then)
      : super(_value, (v) => _then(v as _SignUpRequest));

  @override
  _SignUpRequest get _value => super._value as _SignUpRequest;

  @override
  $Res call({
    Object? userName = freezed,
    Object? password = freezed,
  }) {
    return _then(_SignUpRequest(
      userName: userName == freezed
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SignUpRequest with DiagnosticableTreeMixin implements _SignUpRequest {
  const _$_SignUpRequest(
      {@JsonKey(name: 'name') required this.userName, required this.password});

  factory _$_SignUpRequest.fromJson(Map<String, dynamic> json) =>
      _$_$_SignUpRequestFromJson(json);

  @override
  @JsonKey(name: 'name')
  final String userName;
  @override
  final String password;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignUpRequest(userName: $userName, password: $password)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SignUpRequest'))
      ..add(DiagnosticsProperty('userName', userName))
      ..add(DiagnosticsProperty('password', password));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SignUpRequest &&
            (identical(other.userName, userName) ||
                const DeepCollectionEquality()
                    .equals(other.userName, userName)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(userName) ^
      const DeepCollectionEquality().hash(password);

  @JsonKey(ignore: true)
  @override
  _$SignUpRequestCopyWith<_SignUpRequest> get copyWith =>
      __$SignUpRequestCopyWithImpl<_SignUpRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_SignUpRequestToJson(this);
  }
}

abstract class _SignUpRequest implements SignUpRequest {
  const factory _SignUpRequest(
      {@JsonKey(name: 'name') required String userName,
      required String password}) = _$_SignUpRequest;

  factory _SignUpRequest.fromJson(Map<String, dynamic> json) =
      _$_SignUpRequest.fromJson;

  @override
  @JsonKey(name: 'name')
  String get userName => throw _privateConstructorUsedError;
  @override
  String get password => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SignUpRequestCopyWith<_SignUpRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
