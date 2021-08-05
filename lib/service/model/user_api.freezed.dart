// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'user_api.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UpdateUserRequest _$UpdateUserRequestFromJson(Map<String, dynamic> json) {
  return _UpdateUserRequest.fromJson(json);
}

/// @nodoc
class _$UpdateUserRequestTearOff {
  const _$UpdateUserRequestTearOff();

  _UpdateUserRequest call({required String id, String? displayName}) {
    return _UpdateUserRequest(
      id: id,
      displayName: displayName,
    );
  }

  UpdateUserRequest fromJson(Map<String, Object> json) {
    return UpdateUserRequest.fromJson(json);
  }
}

/// @nodoc
const $UpdateUserRequest = _$UpdateUserRequestTearOff();

/// @nodoc
mixin _$UpdateUserRequest {
  String get id => throw _privateConstructorUsedError;
  String? get displayName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateUserRequestCopyWith<UpdateUserRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateUserRequestCopyWith<$Res> {
  factory $UpdateUserRequestCopyWith(
          UpdateUserRequest value, $Res Function(UpdateUserRequest) then) =
      _$UpdateUserRequestCopyWithImpl<$Res>;
  $Res call({String id, String? displayName});
}

/// @nodoc
class _$UpdateUserRequestCopyWithImpl<$Res>
    implements $UpdateUserRequestCopyWith<$Res> {
  _$UpdateUserRequestCopyWithImpl(this._value, this._then);

  final UpdateUserRequest _value;
  // ignore: unused_field
  final $Res Function(UpdateUserRequest) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? displayName = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: displayName == freezed
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$UpdateUserRequestCopyWith<$Res>
    implements $UpdateUserRequestCopyWith<$Res> {
  factory _$UpdateUserRequestCopyWith(
          _UpdateUserRequest value, $Res Function(_UpdateUserRequest) then) =
      __$UpdateUserRequestCopyWithImpl<$Res>;
  @override
  $Res call({String id, String? displayName});
}

/// @nodoc
class __$UpdateUserRequestCopyWithImpl<$Res>
    extends _$UpdateUserRequestCopyWithImpl<$Res>
    implements _$UpdateUserRequestCopyWith<$Res> {
  __$UpdateUserRequestCopyWithImpl(
      _UpdateUserRequest _value, $Res Function(_UpdateUserRequest) _then)
      : super(_value, (v) => _then(v as _UpdateUserRequest));

  @override
  _UpdateUserRequest get _value => super._value as _UpdateUserRequest;

  @override
  $Res call({
    Object? id = freezed,
    Object? displayName = freezed,
  }) {
    return _then(_UpdateUserRequest(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: displayName == freezed
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UpdateUserRequest
    with DiagnosticableTreeMixin
    implements _UpdateUserRequest {
  const _$_UpdateUserRequest({required this.id, this.displayName});

  factory _$_UpdateUserRequest.fromJson(Map<String, dynamic> json) =>
      _$_$_UpdateUserRequestFromJson(json);

  @override
  final String id;
  @override
  final String? displayName;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UpdateUserRequest(id: $id, displayName: $displayName)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UpdateUserRequest'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('displayName', displayName));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UpdateUserRequest &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.displayName, displayName) ||
                const DeepCollectionEquality()
                    .equals(other.displayName, displayName)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(displayName);

  @JsonKey(ignore: true)
  @override
  _$UpdateUserRequestCopyWith<_UpdateUserRequest> get copyWith =>
      __$UpdateUserRequestCopyWithImpl<_UpdateUserRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_UpdateUserRequestToJson(this);
  }
}

abstract class _UpdateUserRequest implements UpdateUserRequest {
  const factory _UpdateUserRequest({required String id, String? displayName}) =
      _$_UpdateUserRequest;

  factory _UpdateUserRequest.fromJson(Map<String, dynamic> json) =
      _$_UpdateUserRequest.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String? get displayName => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UpdateUserRequestCopyWith<_UpdateUserRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

UpdateUserResponse _$UpdateUserResponseFromJson(Map<String, dynamic> json) {
  return _UpdateUserResponse.fromJson(json);
}

/// @nodoc
class _$UpdateUserResponseTearOff {
  const _$UpdateUserResponseTearOff();

  _UpdateUserResponse call(
      {required int code, required UpdateUserResponseData data}) {
    return _UpdateUserResponse(
      code: code,
      data: data,
    );
  }

  UpdateUserResponse fromJson(Map<String, Object> json) {
    return UpdateUserResponse.fromJson(json);
  }
}

/// @nodoc
const $UpdateUserResponse = _$UpdateUserResponseTearOff();

/// @nodoc
mixin _$UpdateUserResponse {
  int get code => throw _privateConstructorUsedError;
  UpdateUserResponseData get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateUserResponseCopyWith<UpdateUserResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateUserResponseCopyWith<$Res> {
  factory $UpdateUserResponseCopyWith(
          UpdateUserResponse value, $Res Function(UpdateUserResponse) then) =
      _$UpdateUserResponseCopyWithImpl<$Res>;
  $Res call({int code, UpdateUserResponseData data});

  $UpdateUserResponseDataCopyWith<$Res> get data;
}

/// @nodoc
class _$UpdateUserResponseCopyWithImpl<$Res>
    implements $UpdateUserResponseCopyWith<$Res> {
  _$UpdateUserResponseCopyWithImpl(this._value, this._then);

  final UpdateUserResponse _value;
  // ignore: unused_field
  final $Res Function(UpdateUserResponse) _then;

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
              as UpdateUserResponseData,
    ));
  }

  @override
  $UpdateUserResponseDataCopyWith<$Res> get data {
    return $UpdateUserResponseDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
abstract class _$UpdateUserResponseCopyWith<$Res>
    implements $UpdateUserResponseCopyWith<$Res> {
  factory _$UpdateUserResponseCopyWith(
          _UpdateUserResponse value, $Res Function(_UpdateUserResponse) then) =
      __$UpdateUserResponseCopyWithImpl<$Res>;
  @override
  $Res call({int code, UpdateUserResponseData data});

  @override
  $UpdateUserResponseDataCopyWith<$Res> get data;
}

/// @nodoc
class __$UpdateUserResponseCopyWithImpl<$Res>
    extends _$UpdateUserResponseCopyWithImpl<$Res>
    implements _$UpdateUserResponseCopyWith<$Res> {
  __$UpdateUserResponseCopyWithImpl(
      _UpdateUserResponse _value, $Res Function(_UpdateUserResponse) _then)
      : super(_value, (v) => _then(v as _UpdateUserResponse));

  @override
  _UpdateUserResponse get _value => super._value as _UpdateUserResponse;

  @override
  $Res call({
    Object? code = freezed,
    Object? data = freezed,
  }) {
    return _then(_UpdateUserResponse(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as UpdateUserResponseData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UpdateUserResponse
    with DiagnosticableTreeMixin
    implements _UpdateUserResponse {
  const _$_UpdateUserResponse({required this.code, required this.data});

  factory _$_UpdateUserResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_UpdateUserResponseFromJson(json);

  @override
  final int code;
  @override
  final UpdateUserResponseData data;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UpdateUserResponse(code: $code, data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UpdateUserResponse'))
      ..add(DiagnosticsProperty('code', code))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UpdateUserResponse &&
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
  _$UpdateUserResponseCopyWith<_UpdateUserResponse> get copyWith =>
      __$UpdateUserResponseCopyWithImpl<_UpdateUserResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_UpdateUserResponseToJson(this);
  }
}

abstract class _UpdateUserResponse implements UpdateUserResponse {
  const factory _UpdateUserResponse(
      {required int code,
      required UpdateUserResponseData data}) = _$_UpdateUserResponse;

  factory _UpdateUserResponse.fromJson(Map<String, dynamic> json) =
      _$_UpdateUserResponse.fromJson;

  @override
  int get code => throw _privateConstructorUsedError;
  @override
  UpdateUserResponseData get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UpdateUserResponseCopyWith<_UpdateUserResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

UpdateUserResponseData _$UpdateUserResponseDataFromJson(
    Map<String, dynamic> json) {
  return _UpdateUserResponseData.fromJson(json);
}

/// @nodoc
class _$UpdateUserResponseDataTearOff {
  const _$UpdateUserResponseDataTearOff();

  _UpdateUserResponseData call({required User user}) {
    return _UpdateUserResponseData(
      user: user,
    );
  }

  UpdateUserResponseData fromJson(Map<String, Object> json) {
    return UpdateUserResponseData.fromJson(json);
  }
}

/// @nodoc
const $UpdateUserResponseData = _$UpdateUserResponseDataTearOff();

/// @nodoc
mixin _$UpdateUserResponseData {
  User get user => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateUserResponseDataCopyWith<UpdateUserResponseData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateUserResponseDataCopyWith<$Res> {
  factory $UpdateUserResponseDataCopyWith(UpdateUserResponseData value,
          $Res Function(UpdateUserResponseData) then) =
      _$UpdateUserResponseDataCopyWithImpl<$Res>;
  $Res call({User user});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class _$UpdateUserResponseDataCopyWithImpl<$Res>
    implements $UpdateUserResponseDataCopyWith<$Res> {
  _$UpdateUserResponseDataCopyWithImpl(this._value, this._then);

  final UpdateUserResponseData _value;
  // ignore: unused_field
  final $Res Function(UpdateUserResponseData) _then;

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
abstract class _$UpdateUserResponseDataCopyWith<$Res>
    implements $UpdateUserResponseDataCopyWith<$Res> {
  factory _$UpdateUserResponseDataCopyWith(_UpdateUserResponseData value,
          $Res Function(_UpdateUserResponseData) then) =
      __$UpdateUserResponseDataCopyWithImpl<$Res>;
  @override
  $Res call({User user});

  @override
  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$UpdateUserResponseDataCopyWithImpl<$Res>
    extends _$UpdateUserResponseDataCopyWithImpl<$Res>
    implements _$UpdateUserResponseDataCopyWith<$Res> {
  __$UpdateUserResponseDataCopyWithImpl(_UpdateUserResponseData _value,
      $Res Function(_UpdateUserResponseData) _then)
      : super(_value, (v) => _then(v as _UpdateUserResponseData));

  @override
  _UpdateUserResponseData get _value => super._value as _UpdateUserResponseData;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_UpdateUserResponseData(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UpdateUserResponseData
    with DiagnosticableTreeMixin
    implements _UpdateUserResponseData {
  const _$_UpdateUserResponseData({required this.user});

  factory _$_UpdateUserResponseData.fromJson(Map<String, dynamic> json) =>
      _$_$_UpdateUserResponseDataFromJson(json);

  @override
  final User user;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UpdateUserResponseData(user: $user)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UpdateUserResponseData'))
      ..add(DiagnosticsProperty('user', user));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UpdateUserResponseData &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(user);

  @JsonKey(ignore: true)
  @override
  _$UpdateUserResponseDataCopyWith<_UpdateUserResponseData> get copyWith =>
      __$UpdateUserResponseDataCopyWithImpl<_UpdateUserResponseData>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_UpdateUserResponseDataToJson(this);
  }
}

abstract class _UpdateUserResponseData implements UpdateUserResponseData {
  const factory _UpdateUserResponseData({required User user}) =
      _$_UpdateUserResponseData;

  factory _UpdateUserResponseData.fromJson(Map<String, dynamic> json) =
      _$_UpdateUserResponseData.fromJson;

  @override
  User get user => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UpdateUserResponseDataCopyWith<_UpdateUserResponseData> get copyWith =>
      throw _privateConstructorUsedError;
}
