// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'ranking_api.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GetRankingResponse _$GetRankingResponseFromJson(Map<String, dynamic> json) {
  return _GetRankingResponse.fromJson(json);
}

/// @nodoc
class _$GetRankingResponseTearOff {
  const _$GetRankingResponseTearOff();

  _GetRankingResponse call(
      {required int code, required GetRankingResponseData data}) {
    return _GetRankingResponse(
      code: code,
      data: data,
    );
  }

  GetRankingResponse fromJson(Map<String, Object> json) {
    return GetRankingResponse.fromJson(json);
  }
}

/// @nodoc
const $GetRankingResponse = _$GetRankingResponseTearOff();

/// @nodoc
mixin _$GetRankingResponse {
  int get code => throw _privateConstructorUsedError;
  GetRankingResponseData get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetRankingResponseCopyWith<GetRankingResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetRankingResponseCopyWith<$Res> {
  factory $GetRankingResponseCopyWith(
          GetRankingResponse value, $Res Function(GetRankingResponse) then) =
      _$GetRankingResponseCopyWithImpl<$Res>;
  $Res call({int code, GetRankingResponseData data});

  $GetRankingResponseDataCopyWith<$Res> get data;
}

/// @nodoc
class _$GetRankingResponseCopyWithImpl<$Res>
    implements $GetRankingResponseCopyWith<$Res> {
  _$GetRankingResponseCopyWithImpl(this._value, this._then);

  final GetRankingResponse _value;
  // ignore: unused_field
  final $Res Function(GetRankingResponse) _then;

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
              as GetRankingResponseData,
    ));
  }

  @override
  $GetRankingResponseDataCopyWith<$Res> get data {
    return $GetRankingResponseDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
abstract class _$GetRankingResponseCopyWith<$Res>
    implements $GetRankingResponseCopyWith<$Res> {
  factory _$GetRankingResponseCopyWith(
          _GetRankingResponse value, $Res Function(_GetRankingResponse) then) =
      __$GetRankingResponseCopyWithImpl<$Res>;
  @override
  $Res call({int code, GetRankingResponseData data});

  @override
  $GetRankingResponseDataCopyWith<$Res> get data;
}

/// @nodoc
class __$GetRankingResponseCopyWithImpl<$Res>
    extends _$GetRankingResponseCopyWithImpl<$Res>
    implements _$GetRankingResponseCopyWith<$Res> {
  __$GetRankingResponseCopyWithImpl(
      _GetRankingResponse _value, $Res Function(_GetRankingResponse) _then)
      : super(_value, (v) => _then(v as _GetRankingResponse));

  @override
  _GetRankingResponse get _value => super._value as _GetRankingResponse;

  @override
  $Res call({
    Object? code = freezed,
    Object? data = freezed,
  }) {
    return _then(_GetRankingResponse(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as GetRankingResponseData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GetRankingResponse
    with DiagnosticableTreeMixin
    implements _GetRankingResponse {
  const _$_GetRankingResponse({required this.code, required this.data});

  factory _$_GetRankingResponse.fromJson(Map<String, dynamic> json) =>
      _$$_GetRankingResponseFromJson(json);

  @override
  final int code;
  @override
  final GetRankingResponseData data;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GetRankingResponse(code: $code, data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'GetRankingResponse'))
      ..add(DiagnosticsProperty('code', code))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetRankingResponse &&
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
  _$GetRankingResponseCopyWith<_GetRankingResponse> get copyWith =>
      __$GetRankingResponseCopyWithImpl<_GetRankingResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GetRankingResponseToJson(this);
  }
}

abstract class _GetRankingResponse implements GetRankingResponse {
  const factory _GetRankingResponse(
      {required int code,
      required GetRankingResponseData data}) = _$_GetRankingResponse;

  factory _GetRankingResponse.fromJson(Map<String, dynamic> json) =
      _$_GetRankingResponse.fromJson;

  @override
  int get code => throw _privateConstructorUsedError;
  @override
  GetRankingResponseData get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GetRankingResponseCopyWith<_GetRankingResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

GetRankingResponseData _$GetRankingResponseDataFromJson(
    Map<String, dynamic> json) {
  return _GetRankingResponseData.fromJson(json);
}

/// @nodoc
class _$GetRankingResponseDataTearOff {
  const _$GetRankingResponseDataTearOff();

  _GetRankingResponseData call({List<Group> ranking = const []}) {
    return _GetRankingResponseData(
      ranking: ranking,
    );
  }

  GetRankingResponseData fromJson(Map<String, Object> json) {
    return GetRankingResponseData.fromJson(json);
  }
}

/// @nodoc
const $GetRankingResponseData = _$GetRankingResponseDataTearOff();

/// @nodoc
mixin _$GetRankingResponseData {
  List<Group> get ranking => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetRankingResponseDataCopyWith<GetRankingResponseData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetRankingResponseDataCopyWith<$Res> {
  factory $GetRankingResponseDataCopyWith(GetRankingResponseData value,
          $Res Function(GetRankingResponseData) then) =
      _$GetRankingResponseDataCopyWithImpl<$Res>;
  $Res call({List<Group> ranking});
}

/// @nodoc
class _$GetRankingResponseDataCopyWithImpl<$Res>
    implements $GetRankingResponseDataCopyWith<$Res> {
  _$GetRankingResponseDataCopyWithImpl(this._value, this._then);

  final GetRankingResponseData _value;
  // ignore: unused_field
  final $Res Function(GetRankingResponseData) _then;

  @override
  $Res call({
    Object? ranking = freezed,
  }) {
    return _then(_value.copyWith(
      ranking: ranking == freezed
          ? _value.ranking
          : ranking // ignore: cast_nullable_to_non_nullable
              as List<Group>,
    ));
  }
}

/// @nodoc
abstract class _$GetRankingResponseDataCopyWith<$Res>
    implements $GetRankingResponseDataCopyWith<$Res> {
  factory _$GetRankingResponseDataCopyWith(_GetRankingResponseData value,
          $Res Function(_GetRankingResponseData) then) =
      __$GetRankingResponseDataCopyWithImpl<$Res>;
  @override
  $Res call({List<Group> ranking});
}

/// @nodoc
class __$GetRankingResponseDataCopyWithImpl<$Res>
    extends _$GetRankingResponseDataCopyWithImpl<$Res>
    implements _$GetRankingResponseDataCopyWith<$Res> {
  __$GetRankingResponseDataCopyWithImpl(_GetRankingResponseData _value,
      $Res Function(_GetRankingResponseData) _then)
      : super(_value, (v) => _then(v as _GetRankingResponseData));

  @override
  _GetRankingResponseData get _value => super._value as _GetRankingResponseData;

  @override
  $Res call({
    Object? ranking = freezed,
  }) {
    return _then(_GetRankingResponseData(
      ranking: ranking == freezed
          ? _value.ranking
          : ranking // ignore: cast_nullable_to_non_nullable
              as List<Group>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GetRankingResponseData
    with DiagnosticableTreeMixin
    implements _GetRankingResponseData {
  const _$_GetRankingResponseData({this.ranking = const []});

  factory _$_GetRankingResponseData.fromJson(Map<String, dynamic> json) =>
      _$$_GetRankingResponseDataFromJson(json);

  @JsonKey(defaultValue: const [])
  @override
  final List<Group> ranking;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GetRankingResponseData(ranking: $ranking)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'GetRankingResponseData'))
      ..add(DiagnosticsProperty('ranking', ranking));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetRankingResponseData &&
            (identical(other.ranking, ranking) ||
                const DeepCollectionEquality().equals(other.ranking, ranking)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(ranking);

  @JsonKey(ignore: true)
  @override
  _$GetRankingResponseDataCopyWith<_GetRankingResponseData> get copyWith =>
      __$GetRankingResponseDataCopyWithImpl<_GetRankingResponseData>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GetRankingResponseDataToJson(this);
  }
}

abstract class _GetRankingResponseData implements GetRankingResponseData {
  const factory _GetRankingResponseData({List<Group> ranking}) =
      _$_GetRankingResponseData;

  factory _GetRankingResponseData.fromJson(Map<String, dynamic> json) =
      _$_GetRankingResponseData.fromJson;

  @override
  List<Group> get ranking => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GetRankingResponseDataCopyWith<_GetRankingResponseData> get copyWith =>
      throw _privateConstructorUsedError;
}

Group _$GroupFromJson(Map<String, dynamic> json) {
  return _Group.fromJson(json);
}

/// @nodoc
class _$GroupTearOff {
  const _$GroupTearOff();

  _Group call(
      {required String userGroupId,
      required UserGroup userGroup,
      required int rank,
      required int point}) {
    return _Group(
      userGroupId: userGroupId,
      userGroup: userGroup,
      rank: rank,
      point: point,
    );
  }

  Group fromJson(Map<String, Object> json) {
    return Group.fromJson(json);
  }
}

/// @nodoc
const $Group = _$GroupTearOff();

/// @nodoc
mixin _$Group {
  String get userGroupId => throw _privateConstructorUsedError;
  UserGroup get userGroup => throw _privateConstructorUsedError;
  int get rank => throw _privateConstructorUsedError;
  int get point => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GroupCopyWith<Group> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroupCopyWith<$Res> {
  factory $GroupCopyWith(Group value, $Res Function(Group) then) =
      _$GroupCopyWithImpl<$Res>;
  $Res call({String userGroupId, UserGroup userGroup, int rank, int point});

  $UserGroupCopyWith<$Res> get userGroup;
}

/// @nodoc
class _$GroupCopyWithImpl<$Res> implements $GroupCopyWith<$Res> {
  _$GroupCopyWithImpl(this._value, this._then);

  final Group _value;
  // ignore: unused_field
  final $Res Function(Group) _then;

  @override
  $Res call({
    Object? userGroupId = freezed,
    Object? userGroup = freezed,
    Object? rank = freezed,
    Object? point = freezed,
  }) {
    return _then(_value.copyWith(
      userGroupId: userGroupId == freezed
          ? _value.userGroupId
          : userGroupId // ignore: cast_nullable_to_non_nullable
              as String,
      userGroup: userGroup == freezed
          ? _value.userGroup
          : userGroup // ignore: cast_nullable_to_non_nullable
              as UserGroup,
      rank: rank == freezed
          ? _value.rank
          : rank // ignore: cast_nullable_to_non_nullable
              as int,
      point: point == freezed
          ? _value.point
          : point // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  @override
  $UserGroupCopyWith<$Res> get userGroup {
    return $UserGroupCopyWith<$Res>(_value.userGroup, (value) {
      return _then(_value.copyWith(userGroup: value));
    });
  }
}

/// @nodoc
abstract class _$GroupCopyWith<$Res> implements $GroupCopyWith<$Res> {
  factory _$GroupCopyWith(_Group value, $Res Function(_Group) then) =
      __$GroupCopyWithImpl<$Res>;
  @override
  $Res call({String userGroupId, UserGroup userGroup, int rank, int point});

  @override
  $UserGroupCopyWith<$Res> get userGroup;
}

/// @nodoc
class __$GroupCopyWithImpl<$Res> extends _$GroupCopyWithImpl<$Res>
    implements _$GroupCopyWith<$Res> {
  __$GroupCopyWithImpl(_Group _value, $Res Function(_Group) _then)
      : super(_value, (v) => _then(v as _Group));

  @override
  _Group get _value => super._value as _Group;

  @override
  $Res call({
    Object? userGroupId = freezed,
    Object? userGroup = freezed,
    Object? rank = freezed,
    Object? point = freezed,
  }) {
    return _then(_Group(
      userGroupId: userGroupId == freezed
          ? _value.userGroupId
          : userGroupId // ignore: cast_nullable_to_non_nullable
              as String,
      userGroup: userGroup == freezed
          ? _value.userGroup
          : userGroup // ignore: cast_nullable_to_non_nullable
              as UserGroup,
      rank: rank == freezed
          ? _value.rank
          : rank // ignore: cast_nullable_to_non_nullable
              as int,
      point: point == freezed
          ? _value.point
          : point // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Group with DiagnosticableTreeMixin implements _Group {
  const _$_Group(
      {required this.userGroupId,
      required this.userGroup,
      required this.rank,
      required this.point});

  factory _$_Group.fromJson(Map<String, dynamic> json) =>
      _$$_GroupFromJson(json);

  @override
  final String userGroupId;
  @override
  final UserGroup userGroup;
  @override
  final int rank;
  @override
  final int point;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Group(userGroupId: $userGroupId, userGroup: $userGroup, rank: $rank, point: $point)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Group'))
      ..add(DiagnosticsProperty('userGroupId', userGroupId))
      ..add(DiagnosticsProperty('userGroup', userGroup))
      ..add(DiagnosticsProperty('rank', rank))
      ..add(DiagnosticsProperty('point', point));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Group &&
            (identical(other.userGroupId, userGroupId) ||
                const DeepCollectionEquality()
                    .equals(other.userGroupId, userGroupId)) &&
            (identical(other.userGroup, userGroup) ||
                const DeepCollectionEquality()
                    .equals(other.userGroup, userGroup)) &&
            (identical(other.rank, rank) ||
                const DeepCollectionEquality().equals(other.rank, rank)) &&
            (identical(other.point, point) ||
                const DeepCollectionEquality().equals(other.point, point)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(userGroupId) ^
      const DeepCollectionEquality().hash(userGroup) ^
      const DeepCollectionEquality().hash(rank) ^
      const DeepCollectionEquality().hash(point);

  @JsonKey(ignore: true)
  @override
  _$GroupCopyWith<_Group> get copyWith =>
      __$GroupCopyWithImpl<_Group>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GroupToJson(this);
  }
}

abstract class _Group implements Group {
  const factory _Group(
      {required String userGroupId,
      required UserGroup userGroup,
      required int rank,
      required int point}) = _$_Group;

  factory _Group.fromJson(Map<String, dynamic> json) = _$_Group.fromJson;

  @override
  String get userGroupId => throw _privateConstructorUsedError;
  @override
  UserGroup get userGroup => throw _privateConstructorUsedError;
  @override
  int get rank => throw _privateConstructorUsedError;
  @override
  int get point => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GroupCopyWith<_Group> get copyWith => throw _privateConstructorUsedError;
}
