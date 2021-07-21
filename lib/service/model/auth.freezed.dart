// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'auth.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SignInRequest _$SignInRequestFromJson(Map<String, dynamic> json) {
  return _SignInRequest.fromJson(json);
}

/// @nodoc
class _$SignInRequestTearOff {
  const _$SignInRequestTearOff();

  _SignInRequest call({required String name, required String password}) {
    return _SignInRequest(
      name: name,
      password: password,
    );
  }

  SignInRequest fromJson(Map<String, Object> json) {
    return SignInRequest.fromJson(json);
  }
}

/// @nodoc
const $SignInRequest = _$SignInRequestTearOff();

/// @nodoc
mixin _$SignInRequest {
  String get name => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SignInRequestCopyWith<SignInRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInRequestCopyWith<$Res> {
  factory $SignInRequestCopyWith(
          SignInRequest value, $Res Function(SignInRequest) then) =
      _$SignInRequestCopyWithImpl<$Res>;
  $Res call({String name, String password});
}

/// @nodoc
class _$SignInRequestCopyWithImpl<$Res>
    implements $SignInRequestCopyWith<$Res> {
  _$SignInRequestCopyWithImpl(this._value, this._then);

  final SignInRequest _value;
  // ignore: unused_field
  final $Res Function(SignInRequest) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? password = freezed,
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
    ));
  }
}

/// @nodoc
abstract class _$SignInRequestCopyWith<$Res>
    implements $SignInRequestCopyWith<$Res> {
  factory _$SignInRequestCopyWith(
          _SignInRequest value, $Res Function(_SignInRequest) then) =
      __$SignInRequestCopyWithImpl<$Res>;
  @override
  $Res call({String name, String password});
}

/// @nodoc
class __$SignInRequestCopyWithImpl<$Res>
    extends _$SignInRequestCopyWithImpl<$Res>
    implements _$SignInRequestCopyWith<$Res> {
  __$SignInRequestCopyWithImpl(
      _SignInRequest _value, $Res Function(_SignInRequest) _then)
      : super(_value, (v) => _then(v as _SignInRequest));

  @override
  _SignInRequest get _value => super._value as _SignInRequest;

  @override
  $Res call({
    Object? name = freezed,
    Object? password = freezed,
  }) {
    return _then(_SignInRequest(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
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
class _$_SignInRequest with DiagnosticableTreeMixin implements _SignInRequest {
  const _$_SignInRequest({required this.name, required this.password});

  factory _$_SignInRequest.fromJson(Map<String, dynamic> json) =>
      _$_$_SignInRequestFromJson(json);

  @override
  final String name;
  @override
  final String password;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignInRequest(name: $name, password: $password)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SignInRequest'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('password', password));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SignInRequest &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(password);

  @JsonKey(ignore: true)
  @override
  _$SignInRequestCopyWith<_SignInRequest> get copyWith =>
      __$SignInRequestCopyWithImpl<_SignInRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_SignInRequestToJson(this);
  }
}

abstract class _SignInRequest implements SignInRequest {
  const factory _SignInRequest(
      {required String name, required String password}) = _$_SignInRequest;

  factory _SignInRequest.fromJson(Map<String, dynamic> json) =
      _$_SignInRequest.fromJson;

  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get password => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SignInRequestCopyWith<_SignInRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

SignInResponse _$SignInResponseFromJson(Map<String, dynamic> json) {
  return _SignInResponse.fromJson(json);
}

/// @nodoc
class _$SignInResponseTearOff {
  const _$SignInResponseTearOff();

  _SignInResponse call({required int code, required SignInResponseData data}) {
    return _SignInResponse(
      code: code,
      data: data,
    );
  }

  SignInResponse fromJson(Map<String, Object> json) {
    return SignInResponse.fromJson(json);
  }
}

/// @nodoc
const $SignInResponse = _$SignInResponseTearOff();

/// @nodoc
mixin _$SignInResponse {
  int get code => throw _privateConstructorUsedError;
  SignInResponseData get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SignInResponseCopyWith<SignInResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInResponseCopyWith<$Res> {
  factory $SignInResponseCopyWith(
          SignInResponse value, $Res Function(SignInResponse) then) =
      _$SignInResponseCopyWithImpl<$Res>;
  $Res call({int code, SignInResponseData data});

  $SignInResponseDataCopyWith<$Res> get data;
}

/// @nodoc
class _$SignInResponseCopyWithImpl<$Res>
    implements $SignInResponseCopyWith<$Res> {
  _$SignInResponseCopyWithImpl(this._value, this._then);

  final SignInResponse _value;
  // ignore: unused_field
  final $Res Function(SignInResponse) _then;

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
              as SignInResponseData,
    ));
  }

  @override
  $SignInResponseDataCopyWith<$Res> get data {
    return $SignInResponseDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
abstract class _$SignInResponseCopyWith<$Res>
    implements $SignInResponseCopyWith<$Res> {
  factory _$SignInResponseCopyWith(
          _SignInResponse value, $Res Function(_SignInResponse) then) =
      __$SignInResponseCopyWithImpl<$Res>;
  @override
  $Res call({int code, SignInResponseData data});

  @override
  $SignInResponseDataCopyWith<$Res> get data;
}

/// @nodoc
class __$SignInResponseCopyWithImpl<$Res>
    extends _$SignInResponseCopyWithImpl<$Res>
    implements _$SignInResponseCopyWith<$Res> {
  __$SignInResponseCopyWithImpl(
      _SignInResponse _value, $Res Function(_SignInResponse) _then)
      : super(_value, (v) => _then(v as _SignInResponse));

  @override
  _SignInResponse get _value => super._value as _SignInResponse;

  @override
  $Res call({
    Object? code = freezed,
    Object? data = freezed,
  }) {
    return _then(_SignInResponse(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as SignInResponseData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SignInResponse
    with DiagnosticableTreeMixin
    implements _SignInResponse {
  const _$_SignInResponse({required this.code, required this.data});

  factory _$_SignInResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_SignInResponseFromJson(json);

  @override
  final int code;
  @override
  final SignInResponseData data;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignInResponse(code: $code, data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SignInResponse'))
      ..add(DiagnosticsProperty('code', code))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SignInResponse &&
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
  _$SignInResponseCopyWith<_SignInResponse> get copyWith =>
      __$SignInResponseCopyWithImpl<_SignInResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_SignInResponseToJson(this);
  }
}

abstract class _SignInResponse implements SignInResponse {
  const factory _SignInResponse(
      {required int code,
      required SignInResponseData data}) = _$_SignInResponse;

  factory _SignInResponse.fromJson(Map<String, dynamic> json) =
      _$_SignInResponse.fromJson;

  @override
  int get code => throw _privateConstructorUsedError;
  @override
  SignInResponseData get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SignInResponseCopyWith<_SignInResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

SignInResponseData _$SignInResponseDataFromJson(Map<String, dynamic> json) {
  return _SignInResponseData.fromJson(json);
}

/// @nodoc
class _$SignInResponseDataTearOff {
  const _$SignInResponseDataTearOff();

  _SignInResponseData call({required User user}) {
    return _SignInResponseData(
      user: user,
    );
  }

  SignInResponseData fromJson(Map<String, Object> json) {
    return SignInResponseData.fromJson(json);
  }
}

/// @nodoc
const $SignInResponseData = _$SignInResponseDataTearOff();

/// @nodoc
mixin _$SignInResponseData {
  User get user => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SignInResponseDataCopyWith<SignInResponseData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInResponseDataCopyWith<$Res> {
  factory $SignInResponseDataCopyWith(
          SignInResponseData value, $Res Function(SignInResponseData) then) =
      _$SignInResponseDataCopyWithImpl<$Res>;
  $Res call({User user});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class _$SignInResponseDataCopyWithImpl<$Res>
    implements $SignInResponseDataCopyWith<$Res> {
  _$SignInResponseDataCopyWithImpl(this._value, this._then);

  final SignInResponseData _value;
  // ignore: unused_field
  final $Res Function(SignInResponseData) _then;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_value.copyWith(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }

  @override
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc
abstract class _$SignInResponseDataCopyWith<$Res>
    implements $SignInResponseDataCopyWith<$Res> {
  factory _$SignInResponseDataCopyWith(
          _SignInResponseData value, $Res Function(_SignInResponseData) then) =
      __$SignInResponseDataCopyWithImpl<$Res>;
  @override
  $Res call({User user});

  @override
  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$SignInResponseDataCopyWithImpl<$Res>
    extends _$SignInResponseDataCopyWithImpl<$Res>
    implements _$SignInResponseDataCopyWith<$Res> {
  __$SignInResponseDataCopyWithImpl(
      _SignInResponseData _value, $Res Function(_SignInResponseData) _then)
      : super(_value, (v) => _then(v as _SignInResponseData));

  @override
  _SignInResponseData get _value => super._value as _SignInResponseData;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_SignInResponseData(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SignInResponseData
    with DiagnosticableTreeMixin
    implements _SignInResponseData {
  const _$_SignInResponseData({required this.user});

  factory _$_SignInResponseData.fromJson(Map<String, dynamic> json) =>
      _$_$_SignInResponseDataFromJson(json);

  @override
  final User user;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignInResponseData(user: $user)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SignInResponseData'))
      ..add(DiagnosticsProperty('user', user));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SignInResponseData &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(user);

  @JsonKey(ignore: true)
  @override
  _$SignInResponseDataCopyWith<_SignInResponseData> get copyWith =>
      __$SignInResponseDataCopyWithImpl<_SignInResponseData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_SignInResponseDataToJson(this);
  }
}

abstract class _SignInResponseData implements SignInResponseData {
  const factory _SignInResponseData({required User user}) =
      _$_SignInResponseData;

  factory _SignInResponseData.fromJson(Map<String, dynamic> json) =
      _$_SignInResponseData.fromJson;

  @override
  User get user => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SignInResponseDataCopyWith<_SignInResponseData> get copyWith =>
      throw _privateConstructorUsedError;
}

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

SignUpResponse _$SignUpResponseFromJson(Map<String, dynamic> json) {
  return _SignUpResponse.fromJson(json);
}

/// @nodoc
class _$SignUpResponseTearOff {
  const _$SignUpResponseTearOff();

  _SignUpResponse call({required int code, required SignUpResponseData data}) {
    return _SignUpResponse(
      code: code,
      data: data,
    );
  }

  SignUpResponse fromJson(Map<String, Object> json) {
    return SignUpResponse.fromJson(json);
  }
}

/// @nodoc
const $SignUpResponse = _$SignUpResponseTearOff();

/// @nodoc
mixin _$SignUpResponse {
  int get code => throw _privateConstructorUsedError;
  SignUpResponseData get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SignUpResponseCopyWith<SignUpResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpResponseCopyWith<$Res> {
  factory $SignUpResponseCopyWith(
          SignUpResponse value, $Res Function(SignUpResponse) then) =
      _$SignUpResponseCopyWithImpl<$Res>;
  $Res call({int code, SignUpResponseData data});

  $SignUpResponseDataCopyWith<$Res> get data;
}

/// @nodoc
class _$SignUpResponseCopyWithImpl<$Res>
    implements $SignUpResponseCopyWith<$Res> {
  _$SignUpResponseCopyWithImpl(this._value, this._then);

  final SignUpResponse _value;
  // ignore: unused_field
  final $Res Function(SignUpResponse) _then;

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
              as SignUpResponseData,
    ));
  }

  @override
  $SignUpResponseDataCopyWith<$Res> get data {
    return $SignUpResponseDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
abstract class _$SignUpResponseCopyWith<$Res>
    implements $SignUpResponseCopyWith<$Res> {
  factory _$SignUpResponseCopyWith(
          _SignUpResponse value, $Res Function(_SignUpResponse) then) =
      __$SignUpResponseCopyWithImpl<$Res>;
  @override
  $Res call({int code, SignUpResponseData data});

  @override
  $SignUpResponseDataCopyWith<$Res> get data;
}

/// @nodoc
class __$SignUpResponseCopyWithImpl<$Res>
    extends _$SignUpResponseCopyWithImpl<$Res>
    implements _$SignUpResponseCopyWith<$Res> {
  __$SignUpResponseCopyWithImpl(
      _SignUpResponse _value, $Res Function(_SignUpResponse) _then)
      : super(_value, (v) => _then(v as _SignUpResponse));

  @override
  _SignUpResponse get _value => super._value as _SignUpResponse;

  @override
  $Res call({
    Object? code = freezed,
    Object? data = freezed,
  }) {
    return _then(_SignUpResponse(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as SignUpResponseData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SignUpResponse
    with DiagnosticableTreeMixin
    implements _SignUpResponse {
  const _$_SignUpResponse({required this.code, required this.data});

  factory _$_SignUpResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_SignUpResponseFromJson(json);

  @override
  final int code;
  @override
  final SignUpResponseData data;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignUpResponse(code: $code, data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SignUpResponse'))
      ..add(DiagnosticsProperty('code', code))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SignUpResponse &&
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
  _$SignUpResponseCopyWith<_SignUpResponse> get copyWith =>
      __$SignUpResponseCopyWithImpl<_SignUpResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_SignUpResponseToJson(this);
  }
}

abstract class _SignUpResponse implements SignUpResponse {
  const factory _SignUpResponse(
      {required int code,
      required SignUpResponseData data}) = _$_SignUpResponse;

  factory _SignUpResponse.fromJson(Map<String, dynamic> json) =
      _$_SignUpResponse.fromJson;

  @override
  int get code => throw _privateConstructorUsedError;
  @override
  SignUpResponseData get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SignUpResponseCopyWith<_SignUpResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

SignUpResponseData _$SignUpResponseDataFromJson(Map<String, dynamic> json) {
  return _SignUpResponseData.fromJson(json);
}

/// @nodoc
class _$SignUpResponseDataTearOff {
  const _$SignUpResponseDataTearOff();

  _SignUpResponseData call({required User user}) {
    return _SignUpResponseData(
      user: user,
    );
  }

  SignUpResponseData fromJson(Map<String, Object> json) {
    return SignUpResponseData.fromJson(json);
  }
}

/// @nodoc
const $SignUpResponseData = _$SignUpResponseDataTearOff();

/// @nodoc
mixin _$SignUpResponseData {
  User get user => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SignUpResponseDataCopyWith<SignUpResponseData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpResponseDataCopyWith<$Res> {
  factory $SignUpResponseDataCopyWith(
          SignUpResponseData value, $Res Function(SignUpResponseData) then) =
      _$SignUpResponseDataCopyWithImpl<$Res>;
  $Res call({User user});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class _$SignUpResponseDataCopyWithImpl<$Res>
    implements $SignUpResponseDataCopyWith<$Res> {
  _$SignUpResponseDataCopyWithImpl(this._value, this._then);

  final SignUpResponseData _value;
  // ignore: unused_field
  final $Res Function(SignUpResponseData) _then;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_value.copyWith(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }

  @override
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc
abstract class _$SignUpResponseDataCopyWith<$Res>
    implements $SignUpResponseDataCopyWith<$Res> {
  factory _$SignUpResponseDataCopyWith(
          _SignUpResponseData value, $Res Function(_SignUpResponseData) then) =
      __$SignUpResponseDataCopyWithImpl<$Res>;
  @override
  $Res call({User user});

  @override
  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$SignUpResponseDataCopyWithImpl<$Res>
    extends _$SignUpResponseDataCopyWithImpl<$Res>
    implements _$SignUpResponseDataCopyWith<$Res> {
  __$SignUpResponseDataCopyWithImpl(
      _SignUpResponseData _value, $Res Function(_SignUpResponseData) _then)
      : super(_value, (v) => _then(v as _SignUpResponseData));

  @override
  _SignUpResponseData get _value => super._value as _SignUpResponseData;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_SignUpResponseData(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SignUpResponseData
    with DiagnosticableTreeMixin
    implements _SignUpResponseData {
  const _$_SignUpResponseData({required this.user});

  factory _$_SignUpResponseData.fromJson(Map<String, dynamic> json) =>
      _$_$_SignUpResponseDataFromJson(json);

  @override
  final User user;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignUpResponseData(user: $user)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SignUpResponseData'))
      ..add(DiagnosticsProperty('user', user));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SignUpResponseData &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(user);

  @JsonKey(ignore: true)
  @override
  _$SignUpResponseDataCopyWith<_SignUpResponseData> get copyWith =>
      __$SignUpResponseDataCopyWithImpl<_SignUpResponseData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_SignUpResponseDataToJson(this);
  }
}

abstract class _SignUpResponseData implements SignUpResponseData {
  const factory _SignUpResponseData({required User user}) =
      _$_SignUpResponseData;

  factory _SignUpResponseData.fromJson(Map<String, dynamic> json) =
      _$_SignUpResponseData.fromJson;

  @override
  User get user => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SignUpResponseDataCopyWith<_SignUpResponseData> get copyWith =>
      throw _privateConstructorUsedError;
}
