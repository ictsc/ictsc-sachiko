// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

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

  _UpdateUserRequest call(
      {required String id,
      String? displayName,
      String? twitterId,
      String? githubId,
      String? facebookId,
      String? selfIntroduction}) {
    return _UpdateUserRequest(
      id: id,
      displayName: displayName,
      twitterId: twitterId,
      githubId: githubId,
      facebookId: facebookId,
      selfIntroduction: selfIntroduction,
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
  String? get twitterId => throw _privateConstructorUsedError;
  String? get githubId => throw _privateConstructorUsedError;
  String? get facebookId => throw _privateConstructorUsedError;
  String? get selfIntroduction => throw _privateConstructorUsedError;

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
  $Res call(
      {String id,
      String? displayName,
      String? twitterId,
      String? githubId,
      String? facebookId,
      String? selfIntroduction});
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
    Object? twitterId = freezed,
    Object? githubId = freezed,
    Object? facebookId = freezed,
    Object? selfIntroduction = freezed,
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
      twitterId: twitterId == freezed
          ? _value.twitterId
          : twitterId // ignore: cast_nullable_to_non_nullable
              as String?,
      githubId: githubId == freezed
          ? _value.githubId
          : githubId // ignore: cast_nullable_to_non_nullable
              as String?,
      facebookId: facebookId == freezed
          ? _value.facebookId
          : facebookId // ignore: cast_nullable_to_non_nullable
              as String?,
      selfIntroduction: selfIntroduction == freezed
          ? _value.selfIntroduction
          : selfIntroduction // ignore: cast_nullable_to_non_nullable
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
  $Res call(
      {String id,
      String? displayName,
      String? twitterId,
      String? githubId,
      String? facebookId,
      String? selfIntroduction});
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
    Object? twitterId = freezed,
    Object? githubId = freezed,
    Object? facebookId = freezed,
    Object? selfIntroduction = freezed,
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
      twitterId: twitterId == freezed
          ? _value.twitterId
          : twitterId // ignore: cast_nullable_to_non_nullable
              as String?,
      githubId: githubId == freezed
          ? _value.githubId
          : githubId // ignore: cast_nullable_to_non_nullable
              as String?,
      facebookId: facebookId == freezed
          ? _value.facebookId
          : facebookId // ignore: cast_nullable_to_non_nullable
              as String?,
      selfIntroduction: selfIntroduction == freezed
          ? _value.selfIntroduction
          : selfIntroduction // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UpdateUserRequest
    with DiagnosticableTreeMixin
    implements _UpdateUserRequest {
  const _$_UpdateUserRequest(
      {required this.id,
      this.displayName,
      this.twitterId,
      this.githubId,
      this.facebookId,
      this.selfIntroduction});

  factory _$_UpdateUserRequest.fromJson(Map<String, dynamic> json) =>
      _$$_UpdateUserRequestFromJson(json);

  @override
  final String id;
  @override
  final String? displayName;
  @override
  final String? twitterId;
  @override
  final String? githubId;
  @override
  final String? facebookId;
  @override
  final String? selfIntroduction;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UpdateUserRequest(id: $id, displayName: $displayName, twitterId: $twitterId, githubId: $githubId, facebookId: $facebookId, selfIntroduction: $selfIntroduction)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UpdateUserRequest'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('displayName', displayName))
      ..add(DiagnosticsProperty('twitterId', twitterId))
      ..add(DiagnosticsProperty('githubId', githubId))
      ..add(DiagnosticsProperty('facebookId', facebookId))
      ..add(DiagnosticsProperty('selfIntroduction', selfIntroduction));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UpdateUserRequest &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.displayName, displayName) ||
                const DeepCollectionEquality()
                    .equals(other.displayName, displayName)) &&
            (identical(other.twitterId, twitterId) ||
                const DeepCollectionEquality()
                    .equals(other.twitterId, twitterId)) &&
            (identical(other.githubId, githubId) ||
                const DeepCollectionEquality()
                    .equals(other.githubId, githubId)) &&
            (identical(other.facebookId, facebookId) ||
                const DeepCollectionEquality()
                    .equals(other.facebookId, facebookId)) &&
            (identical(other.selfIntroduction, selfIntroduction) ||
                const DeepCollectionEquality()
                    .equals(other.selfIntroduction, selfIntroduction)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(displayName) ^
      const DeepCollectionEquality().hash(twitterId) ^
      const DeepCollectionEquality().hash(githubId) ^
      const DeepCollectionEquality().hash(facebookId) ^
      const DeepCollectionEquality().hash(selfIntroduction);

  @JsonKey(ignore: true)
  @override
  _$UpdateUserRequestCopyWith<_UpdateUserRequest> get copyWith =>
      __$UpdateUserRequestCopyWithImpl<_UpdateUserRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UpdateUserRequestToJson(this);
  }
}

abstract class _UpdateUserRequest implements UpdateUserRequest {
  const factory _UpdateUserRequest(
      {required String id,
      String? displayName,
      String? twitterId,
      String? githubId,
      String? facebookId,
      String? selfIntroduction}) = _$_UpdateUserRequest;

  factory _UpdateUserRequest.fromJson(Map<String, dynamic> json) =
      _$_UpdateUserRequest.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String? get displayName => throw _privateConstructorUsedError;
  @override
  String? get twitterId => throw _privateConstructorUsedError;
  @override
  String? get githubId => throw _privateConstructorUsedError;
  @override
  String? get facebookId => throw _privateConstructorUsedError;
  @override
  String? get selfIntroduction => throw _privateConstructorUsedError;
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
      _$$_UpdateUserResponseFromJson(json);

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
    return _$$_UpdateUserResponseToJson(this);
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
      _$$_UpdateUserResponseDataFromJson(json);

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
    return _$$_UpdateUserResponseDataToJson(this);
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

GetUserGroupResponse _$GetUserGroupResponseFromJson(Map<String, dynamic> json) {
  return _GetUserGroupResponse.fromJson(json);
}

/// @nodoc
class _$GetUserGroupResponseTearOff {
  const _$GetUserGroupResponseTearOff();

  _GetUserGroupResponse call(
      {required int code, List<UserGroupDetail> data = const []}) {
    return _GetUserGroupResponse(
      code: code,
      data: data,
    );
  }

  GetUserGroupResponse fromJson(Map<String, Object> json) {
    return GetUserGroupResponse.fromJson(json);
  }
}

/// @nodoc
const $GetUserGroupResponse = _$GetUserGroupResponseTearOff();

/// @nodoc
mixin _$GetUserGroupResponse {
  int get code => throw _privateConstructorUsedError;
  List<UserGroupDetail> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetUserGroupResponseCopyWith<GetUserGroupResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetUserGroupResponseCopyWith<$Res> {
  factory $GetUserGroupResponseCopyWith(GetUserGroupResponse value,
          $Res Function(GetUserGroupResponse) then) =
      _$GetUserGroupResponseCopyWithImpl<$Res>;
  $Res call({int code, List<UserGroupDetail> data});
}

/// @nodoc
class _$GetUserGroupResponseCopyWithImpl<$Res>
    implements $GetUserGroupResponseCopyWith<$Res> {
  _$GetUserGroupResponseCopyWithImpl(this._value, this._then);

  final GetUserGroupResponse _value;
  // ignore: unused_field
  final $Res Function(GetUserGroupResponse) _then;

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
              as List<UserGroupDetail>,
    ));
  }
}

/// @nodoc
abstract class _$GetUserGroupResponseCopyWith<$Res>
    implements $GetUserGroupResponseCopyWith<$Res> {
  factory _$GetUserGroupResponseCopyWith(_GetUserGroupResponse value,
          $Res Function(_GetUserGroupResponse) then) =
      __$GetUserGroupResponseCopyWithImpl<$Res>;
  @override
  $Res call({int code, List<UserGroupDetail> data});
}

/// @nodoc
class __$GetUserGroupResponseCopyWithImpl<$Res>
    extends _$GetUserGroupResponseCopyWithImpl<$Res>
    implements _$GetUserGroupResponseCopyWith<$Res> {
  __$GetUserGroupResponseCopyWithImpl(
      _GetUserGroupResponse _value, $Res Function(_GetUserGroupResponse) _then)
      : super(_value, (v) => _then(v as _GetUserGroupResponse));

  @override
  _GetUserGroupResponse get _value => super._value as _GetUserGroupResponse;

  @override
  $Res call({
    Object? code = freezed,
    Object? data = freezed,
  }) {
    return _then(_GetUserGroupResponse(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<UserGroupDetail>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GetUserGroupResponse
    with DiagnosticableTreeMixin
    implements _GetUserGroupResponse {
  const _$_GetUserGroupResponse({required this.code, this.data = const []});

  factory _$_GetUserGroupResponse.fromJson(Map<String, dynamic> json) =>
      _$$_GetUserGroupResponseFromJson(json);

  @override
  final int code;
  @JsonKey(defaultValue: const [])
  @override
  final List<UserGroupDetail> data;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GetUserGroupResponse(code: $code, data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'GetUserGroupResponse'))
      ..add(DiagnosticsProperty('code', code))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetUserGroupResponse &&
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
  _$GetUserGroupResponseCopyWith<_GetUserGroupResponse> get copyWith =>
      __$GetUserGroupResponseCopyWithImpl<_GetUserGroupResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GetUserGroupResponseToJson(this);
  }
}

abstract class _GetUserGroupResponse implements GetUserGroupResponse {
  const factory _GetUserGroupResponse(
      {required int code,
      List<UserGroupDetail> data}) = _$_GetUserGroupResponse;

  factory _GetUserGroupResponse.fromJson(Map<String, dynamic> json) =
      _$_GetUserGroupResponse.fromJson;

  @override
  int get code => throw _privateConstructorUsedError;
  @override
  List<UserGroupDetail> get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GetUserGroupResponseCopyWith<_GetUserGroupResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

UserGroupDetail _$UserGroupDetailFromJson(Map<String, dynamic> json) {
  return _UserGroupDetail.fromJson(json);
}

/// @nodoc
class _$UserGroupDetailTearOff {
  const _$UserGroupDetailTearOff();

  _UserGroupDetail call(
      {required String name,
      required String organization,
      List<Member> members = const []}) {
    return _UserGroupDetail(
      name: name,
      organization: organization,
      members: members,
    );
  }

  UserGroupDetail fromJson(Map<String, Object> json) {
    return UserGroupDetail.fromJson(json);
  }
}

/// @nodoc
const $UserGroupDetail = _$UserGroupDetailTearOff();

/// @nodoc
mixin _$UserGroupDetail {
  String get name => throw _privateConstructorUsedError;
  String get organization => throw _privateConstructorUsedError;
  List<Member> get members => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserGroupDetailCopyWith<UserGroupDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserGroupDetailCopyWith<$Res> {
  factory $UserGroupDetailCopyWith(
          UserGroupDetail value, $Res Function(UserGroupDetail) then) =
      _$UserGroupDetailCopyWithImpl<$Res>;
  $Res call({String name, String organization, List<Member> members});
}

/// @nodoc
class _$UserGroupDetailCopyWithImpl<$Res>
    implements $UserGroupDetailCopyWith<$Res> {
  _$UserGroupDetailCopyWithImpl(this._value, this._then);

  final UserGroupDetail _value;
  // ignore: unused_field
  final $Res Function(UserGroupDetail) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? organization = freezed,
    Object? members = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      organization: organization == freezed
          ? _value.organization
          : organization // ignore: cast_nullable_to_non_nullable
              as String,
      members: members == freezed
          ? _value.members
          : members // ignore: cast_nullable_to_non_nullable
              as List<Member>,
    ));
  }
}

/// @nodoc
abstract class _$UserGroupDetailCopyWith<$Res>
    implements $UserGroupDetailCopyWith<$Res> {
  factory _$UserGroupDetailCopyWith(
          _UserGroupDetail value, $Res Function(_UserGroupDetail) then) =
      __$UserGroupDetailCopyWithImpl<$Res>;
  @override
  $Res call({String name, String organization, List<Member> members});
}

/// @nodoc
class __$UserGroupDetailCopyWithImpl<$Res>
    extends _$UserGroupDetailCopyWithImpl<$Res>
    implements _$UserGroupDetailCopyWith<$Res> {
  __$UserGroupDetailCopyWithImpl(
      _UserGroupDetail _value, $Res Function(_UserGroupDetail) _then)
      : super(_value, (v) => _then(v as _UserGroupDetail));

  @override
  _UserGroupDetail get _value => super._value as _UserGroupDetail;

  @override
  $Res call({
    Object? name = freezed,
    Object? organization = freezed,
    Object? members = freezed,
  }) {
    return _then(_UserGroupDetail(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      organization: organization == freezed
          ? _value.organization
          : organization // ignore: cast_nullable_to_non_nullable
              as String,
      members: members == freezed
          ? _value.members
          : members // ignore: cast_nullable_to_non_nullable
              as List<Member>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserGroupDetail
    with DiagnosticableTreeMixin
    implements _UserGroupDetail {
  const _$_UserGroupDetail(
      {required this.name,
      required this.organization,
      this.members = const []});

  factory _$_UserGroupDetail.fromJson(Map<String, dynamic> json) =>
      _$$_UserGroupDetailFromJson(json);

  @override
  final String name;
  @override
  final String organization;
  @JsonKey(defaultValue: const [])
  @override
  final List<Member> members;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserGroupDetail(name: $name, organization: $organization, members: $members)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserGroupDetail'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('organization', organization))
      ..add(DiagnosticsProperty('members', members));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserGroupDetail &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.organization, organization) ||
                const DeepCollectionEquality()
                    .equals(other.organization, organization)) &&
            (identical(other.members, members) ||
                const DeepCollectionEquality().equals(other.members, members)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(organization) ^
      const DeepCollectionEquality().hash(members);

  @JsonKey(ignore: true)
  @override
  _$UserGroupDetailCopyWith<_UserGroupDetail> get copyWith =>
      __$UserGroupDetailCopyWithImpl<_UserGroupDetail>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserGroupDetailToJson(this);
  }
}

abstract class _UserGroupDetail implements UserGroupDetail {
  const factory _UserGroupDetail(
      {required String name,
      required String organization,
      List<Member> members}) = _$_UserGroupDetail;

  factory _UserGroupDetail.fromJson(Map<String, dynamic> json) =
      _$_UserGroupDetail.fromJson;

  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get organization => throw _privateConstructorUsedError;
  @override
  List<Member> get members => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UserGroupDetailCopyWith<_UserGroupDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

Member _$MemberFromJson(Map<String, dynamic> json) {
  return _Member.fromJson(json);
}

/// @nodoc
class _$MemberTearOff {
  const _$MemberTearOff();

  _Member call({required String displayName, UserProfile? profile}) {
    return _Member(
      displayName: displayName,
      profile: profile,
    );
  }

  Member fromJson(Map<String, Object> json) {
    return Member.fromJson(json);
  }
}

/// @nodoc
const $Member = _$MemberTearOff();

/// @nodoc
mixin _$Member {
  String get displayName => throw _privateConstructorUsedError;
  UserProfile? get profile => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MemberCopyWith<Member> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MemberCopyWith<$Res> {
  factory $MemberCopyWith(Member value, $Res Function(Member) then) =
      _$MemberCopyWithImpl<$Res>;
  $Res call({String displayName, UserProfile? profile});

  $UserProfileCopyWith<$Res>? get profile;
}

/// @nodoc
class _$MemberCopyWithImpl<$Res> implements $MemberCopyWith<$Res> {
  _$MemberCopyWithImpl(this._value, this._then);

  final Member _value;
  // ignore: unused_field
  final $Res Function(Member) _then;

  @override
  $Res call({
    Object? displayName = freezed,
    Object? profile = freezed,
  }) {
    return _then(_value.copyWith(
      displayName: displayName == freezed
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      profile: profile == freezed
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as UserProfile?,
    ));
  }

  @override
  $UserProfileCopyWith<$Res>? get profile {
    if (_value.profile == null) {
      return null;
    }

    return $UserProfileCopyWith<$Res>(_value.profile!, (value) {
      return _then(_value.copyWith(profile: value));
    });
  }
}

/// @nodoc
abstract class _$MemberCopyWith<$Res> implements $MemberCopyWith<$Res> {
  factory _$MemberCopyWith(_Member value, $Res Function(_Member) then) =
      __$MemberCopyWithImpl<$Res>;
  @override
  $Res call({String displayName, UserProfile? profile});

  @override
  $UserProfileCopyWith<$Res>? get profile;
}

/// @nodoc
class __$MemberCopyWithImpl<$Res> extends _$MemberCopyWithImpl<$Res>
    implements _$MemberCopyWith<$Res> {
  __$MemberCopyWithImpl(_Member _value, $Res Function(_Member) _then)
      : super(_value, (v) => _then(v as _Member));

  @override
  _Member get _value => super._value as _Member;

  @override
  $Res call({
    Object? displayName = freezed,
    Object? profile = freezed,
  }) {
    return _then(_Member(
      displayName: displayName == freezed
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      profile: profile == freezed
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as UserProfile?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Member with DiagnosticableTreeMixin implements _Member {
  const _$_Member({required this.displayName, this.profile});

  factory _$_Member.fromJson(Map<String, dynamic> json) =>
      _$$_MemberFromJson(json);

  @override
  final String displayName;
  @override
  final UserProfile? profile;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Member(displayName: $displayName, profile: $profile)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Member'))
      ..add(DiagnosticsProperty('displayName', displayName))
      ..add(DiagnosticsProperty('profile', profile));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Member &&
            (identical(other.displayName, displayName) ||
                const DeepCollectionEquality()
                    .equals(other.displayName, displayName)) &&
            (identical(other.profile, profile) ||
                const DeepCollectionEquality().equals(other.profile, profile)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(displayName) ^
      const DeepCollectionEquality().hash(profile);

  @JsonKey(ignore: true)
  @override
  _$MemberCopyWith<_Member> get copyWith =>
      __$MemberCopyWithImpl<_Member>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MemberToJson(this);
  }
}

abstract class _Member implements Member {
  const factory _Member({required String displayName, UserProfile? profile}) =
      _$_Member;

  factory _Member.fromJson(Map<String, dynamic> json) = _$_Member.fromJson;

  @override
  String get displayName => throw _privateConstructorUsedError;
  @override
  UserProfile? get profile => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$MemberCopyWith<_Member> get copyWith => throw _privateConstructorUsedError;
}
