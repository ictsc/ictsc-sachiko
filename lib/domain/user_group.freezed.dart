// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'user_group.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserGroup _$UserGroupFromJson(Map<String, dynamic> json) {
  return _UserGroup.fromJson(json);
}

/// @nodoc
class _$UserGroupTearOff {
  const _$UserGroupTearOff();

  _UserGroup call(
      {required String id,
      required String name,
      required String organization,
      @JsonKey(name: 'created_at') required DateTime createdAt,
      @JsonKey(name: 'updated_at') required DateTime updatedAt,
      @JsonKey(name: 'is_full_access') required bool isFullAccess}) {
    return _UserGroup(
      id: id,
      name: name,
      organization: organization,
      createdAt: createdAt,
      updatedAt: updatedAt,
      isFullAccess: isFullAccess,
    );
  }

  UserGroup fromJson(Map<String, Object> json) {
    return UserGroup.fromJson(json);
  }
}

/// @nodoc
const $UserGroup = _$UserGroupTearOff();

/// @nodoc
mixin _$UserGroup {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get organization => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_full_access')
  bool get isFullAccess => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserGroupCopyWith<UserGroup> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserGroupCopyWith<$Res> {
  factory $UserGroupCopyWith(UserGroup value, $Res Function(UserGroup) then) =
      _$UserGroupCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String name,
      String organization,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'updated_at') DateTime updatedAt,
      @JsonKey(name: 'is_full_access') bool isFullAccess});
}

/// @nodoc
class _$UserGroupCopyWithImpl<$Res> implements $UserGroupCopyWith<$Res> {
  _$UserGroupCopyWithImpl(this._value, this._then);

  final UserGroup _value;
  // ignore: unused_field
  final $Res Function(UserGroup) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? organization = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? isFullAccess = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      organization: organization == freezed
          ? _value.organization
          : organization // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isFullAccess: isFullAccess == freezed
          ? _value.isFullAccess
          : isFullAccess // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$UserGroupCopyWith<$Res> implements $UserGroupCopyWith<$Res> {
  factory _$UserGroupCopyWith(
          _UserGroup value, $Res Function(_UserGroup) then) =
      __$UserGroupCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String name,
      String organization,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'updated_at') DateTime updatedAt,
      @JsonKey(name: 'is_full_access') bool isFullAccess});
}

/// @nodoc
class __$UserGroupCopyWithImpl<$Res> extends _$UserGroupCopyWithImpl<$Res>
    implements _$UserGroupCopyWith<$Res> {
  __$UserGroupCopyWithImpl(_UserGroup _value, $Res Function(_UserGroup) _then)
      : super(_value, (v) => _then(v as _UserGroup));

  @override
  _UserGroup get _value => super._value as _UserGroup;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? organization = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? isFullAccess = freezed,
  }) {
    return _then(_UserGroup(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      organization: organization == freezed
          ? _value.organization
          : organization // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isFullAccess: isFullAccess == freezed
          ? _value.isFullAccess
          : isFullAccess // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserGroup with DiagnosticableTreeMixin implements _UserGroup {
  const _$_UserGroup(
      {required this.id,
      required this.name,
      required this.organization,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'updated_at') required this.updatedAt,
      @JsonKey(name: 'is_full_access') required this.isFullAccess});

  factory _$_UserGroup.fromJson(Map<String, dynamic> json) =>
      _$_$_UserGroupFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String organization;
  @override
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime updatedAt;
  @override
  @JsonKey(name: 'is_full_access')
  final bool isFullAccess;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserGroup(id: $id, name: $name, organization: $organization, createdAt: $createdAt, updatedAt: $updatedAt, isFullAccess: $isFullAccess)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserGroup'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('organization', organization))
      ..add(DiagnosticsProperty('createdAt', createdAt))
      ..add(DiagnosticsProperty('updatedAt', updatedAt))
      ..add(DiagnosticsProperty('isFullAccess', isFullAccess));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserGroup &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.organization, organization) ||
                const DeepCollectionEquality()
                    .equals(other.organization, organization)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)) &&
            (identical(other.isFullAccess, isFullAccess) ||
                const DeepCollectionEquality()
                    .equals(other.isFullAccess, isFullAccess)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(organization) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(isFullAccess);

  @JsonKey(ignore: true)
  @override
  _$UserGroupCopyWith<_UserGroup> get copyWith =>
      __$UserGroupCopyWithImpl<_UserGroup>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_UserGroupToJson(this);
  }
}

abstract class _UserGroup implements UserGroup {
  const factory _UserGroup(
          {required String id,
          required String name,
          required String organization,
          @JsonKey(name: 'created_at') required DateTime createdAt,
          @JsonKey(name: 'updated_at') required DateTime updatedAt,
          @JsonKey(name: 'is_full_access') required bool isFullAccess}) =
      _$_UserGroup;

  factory _UserGroup.fromJson(Map<String, dynamic> json) =
      _$_UserGroup.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get organization => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'is_full_access')
  bool get isFullAccess => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UserGroupCopyWith<_UserGroup> get copyWith =>
      throw _privateConstructorUsedError;
}
