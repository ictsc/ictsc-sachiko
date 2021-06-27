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
      {required String name,
      required String password,
      required String userGroupId,
      required String invitationCode}) {
    return _SignUpRequest(
      name: name,
      password: password,
      userGroupId: userGroupId,
      invitationCode: invitationCode,
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
  String get name => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String get userGroupId => throw _privateConstructorUsedError;
  String get invitationCode => throw _privateConstructorUsedError;

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
  $Res call(
      {String name,
      String password,
      String userGroupId,
      String invitationCode});
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
    Object? name = freezed,
    Object? password = freezed,
    Object? userGroupId = freezed,
    Object? invitationCode = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      userGroupId: userGroupId == freezed
          ? _value.userGroupId
          : userGroupId // ignore: cast_nullable_to_non_nullable
              as String,
      invitationCode: invitationCode == freezed
          ? _value.invitationCode
          : invitationCode // ignore: cast_nullable_to_non_nullable
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
  $Res call(
      {String name,
      String password,
      String userGroupId,
      String invitationCode});
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
    Object? name = freezed,
    Object? password = freezed,
    Object? userGroupId = freezed,
    Object? invitationCode = freezed,
  }) {
    return _then(_SignUpRequest(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      userGroupId: userGroupId == freezed
          ? _value.userGroupId
          : userGroupId // ignore: cast_nullable_to_non_nullable
              as String,
      invitationCode: invitationCode == freezed
          ? _value.invitationCode
          : invitationCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SignUpRequest with DiagnosticableTreeMixin implements _SignUpRequest {
  const _$_SignUpRequest(
      {required this.name,
      required this.password,
      required this.userGroupId,
      required this.invitationCode});

  factory _$_SignUpRequest.fromJson(Map<String, dynamic> json) =>
      _$_$_SignUpRequestFromJson(json);

  @override
  final String name;
  @override
  final String password;
  @override
  final String userGroupId;
  @override
  final String invitationCode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignUpRequest(name: $name, password: $password, userGroupId: $userGroupId, invitationCode: $invitationCode)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SignUpRequest'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('password', password))
      ..add(DiagnosticsProperty('userGroupId', userGroupId))
      ..add(DiagnosticsProperty('invitationCode', invitationCode));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SignUpRequest &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.userGroupId, userGroupId) ||
                const DeepCollectionEquality()
                    .equals(other.userGroupId, userGroupId)) &&
            (identical(other.invitationCode, invitationCode) ||
                const DeepCollectionEquality()
                    .equals(other.invitationCode, invitationCode)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(userGroupId) ^
      const DeepCollectionEquality().hash(invitationCode);

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
      {required String name,
      required String password,
      required String userGroupId,
      required String invitationCode}) = _$_SignUpRequest;

  factory _SignUpRequest.fromJson(Map<String, dynamic> json) =
      _$_SignUpRequest.fromJson;

  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get password => throw _privateConstructorUsedError;
  @override
  String get userGroupId => throw _privateConstructorUsedError;
  @override
  String get invitationCode => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SignUpRequestCopyWith<_SignUpRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
