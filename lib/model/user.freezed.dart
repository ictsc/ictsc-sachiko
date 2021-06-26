// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
class _$UserTearOff {
  const _$UserTearOff();

  _User call(
      {required String id,
      required String name,
      @JsonKey(name: 'display_name') required String displayName,
      @JsonKey(name: 'user_group_id') required String userGroupId,
      @JsonKey(name: 'created_at') required DateTime createdAt,
      @JsonKey(name: 'updated_at') required DateTime updatedAt,
      @JsonKey(name: 'user_group') UserGroup? userGroup,
      @JsonKey(name: 'is_read_only') required bool isReadOnly}) {
    return _User(
      id: id,
      name: name,
      displayName: displayName,
      userGroupId: userGroupId,
      createdAt: createdAt,
      updatedAt: updatedAt,
      userGroup: userGroup,
      isReadOnly: isReadOnly,
    );
  }

  User fromJson(Map<String, Object> json) {
    return User.fromJson(json);
  }
}

/// @nodoc
const $User = _$UserTearOff();

/// @nodoc
mixin _$User {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'display_name')
  String get displayName => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_group_id')
  String get userGroupId => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_group')
  UserGroup? get userGroup => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_read_only')
  bool get isReadOnly => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String name,
      @JsonKey(name: 'display_name') String displayName,
      @JsonKey(name: 'user_group_id') String userGroupId,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'updated_at') DateTime updatedAt,
      @JsonKey(name: 'user_group') UserGroup? userGroup,
      @JsonKey(name: 'is_read_only') bool isReadOnly});

  $UserGroupCopyWith<$Res>? get userGroup;
}

/// @nodoc
class _$UserCopyWithImpl<$Res> implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  final User _value;
  // ignore: unused_field
  final $Res Function(User) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? displayName = freezed,
    Object? userGroupId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? userGroup = freezed,
    Object? isReadOnly = freezed,
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
      displayName: displayName == freezed
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      userGroupId: userGroupId == freezed
          ? _value.userGroupId
          : userGroupId // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      userGroup: userGroup == freezed
          ? _value.userGroup
          : userGroup // ignore: cast_nullable_to_non_nullable
              as UserGroup?,
      isReadOnly: isReadOnly == freezed
          ? _value.isReadOnly
          : isReadOnly // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  @override
  $UserGroupCopyWith<$Res>? get userGroup {
    if (_value.userGroup == null) {
      return null;
    }

    return $UserGroupCopyWith<$Res>(_value.userGroup!, (value) {
      return _then(_value.copyWith(userGroup: value));
    });
  }
}

/// @nodoc
abstract class _$UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$UserCopyWith(_User value, $Res Function(_User) then) =
      __$UserCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String name,
      @JsonKey(name: 'display_name') String displayName,
      @JsonKey(name: 'user_group_id') String userGroupId,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'updated_at') DateTime updatedAt,
      @JsonKey(name: 'user_group') UserGroup? userGroup,
      @JsonKey(name: 'is_read_only') bool isReadOnly});

  @override
  $UserGroupCopyWith<$Res>? get userGroup;
}

/// @nodoc
class __$UserCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res>
    implements _$UserCopyWith<$Res> {
  __$UserCopyWithImpl(_User _value, $Res Function(_User) _then)
      : super(_value, (v) => _then(v as _User));

  @override
  _User get _value => super._value as _User;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? displayName = freezed,
    Object? userGroupId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? userGroup = freezed,
    Object? isReadOnly = freezed,
  }) {
    return _then(_User(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: displayName == freezed
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      userGroupId: userGroupId == freezed
          ? _value.userGroupId
          : userGroupId // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      userGroup: userGroup == freezed
          ? _value.userGroup
          : userGroup // ignore: cast_nullable_to_non_nullable
              as UserGroup?,
      isReadOnly: isReadOnly == freezed
          ? _value.isReadOnly
          : isReadOnly // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_User with DiagnosticableTreeMixin implements _User {
  const _$_User(
      {required this.id,
      required this.name,
      @JsonKey(name: 'display_name') required this.displayName,
      @JsonKey(name: 'user_group_id') required this.userGroupId,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'updated_at') required this.updatedAt,
      @JsonKey(name: 'user_group') this.userGroup,
      @JsonKey(name: 'is_read_only') required this.isReadOnly});

  factory _$_User.fromJson(Map<String, dynamic> json) =>
      _$_$_UserFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  @JsonKey(name: 'display_name')
  final String displayName;
  @override
  @JsonKey(name: 'user_group_id')
  final String userGroupId;
  @override
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime updatedAt;
  @override
  @JsonKey(name: 'user_group')
  final UserGroup? userGroup;
  @override
  @JsonKey(name: 'is_read_only')
  final bool isReadOnly;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'User(id: $id, name: $name, displayName: $displayName, userGroupId: $userGroupId, createdAt: $createdAt, updatedAt: $updatedAt, userGroup: $userGroup, isReadOnly: $isReadOnly)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'User'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('displayName', displayName))
      ..add(DiagnosticsProperty('userGroupId', userGroupId))
      ..add(DiagnosticsProperty('createdAt', createdAt))
      ..add(DiagnosticsProperty('updatedAt', updatedAt))
      ..add(DiagnosticsProperty('userGroup', userGroup))
      ..add(DiagnosticsProperty('isReadOnly', isReadOnly));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _User &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.displayName, displayName) ||
                const DeepCollectionEquality()
                    .equals(other.displayName, displayName)) &&
            (identical(other.userGroupId, userGroupId) ||
                const DeepCollectionEquality()
                    .equals(other.userGroupId, userGroupId)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)) &&
            (identical(other.userGroup, userGroup) ||
                const DeepCollectionEquality()
                    .equals(other.userGroup, userGroup)) &&
            (identical(other.isReadOnly, isReadOnly) ||
                const DeepCollectionEquality()
                    .equals(other.isReadOnly, isReadOnly)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(displayName) ^
      const DeepCollectionEquality().hash(userGroupId) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(userGroup) ^
      const DeepCollectionEquality().hash(isReadOnly);

  @JsonKey(ignore: true)
  @override
  _$UserCopyWith<_User> get copyWith =>
      __$UserCopyWithImpl<_User>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_UserToJson(this);
  }
}

abstract class _User implements User {
  const factory _User(
      {required String id,
      required String name,
      @JsonKey(name: 'display_name') required String displayName,
      @JsonKey(name: 'user_group_id') required String userGroupId,
      @JsonKey(name: 'created_at') required DateTime createdAt,
      @JsonKey(name: 'updated_at') required DateTime updatedAt,
      @JsonKey(name: 'user_group') UserGroup? userGroup,
      @JsonKey(name: 'is_read_only') required bool isReadOnly}) = _$_User;

  factory _User.fromJson(Map<String, dynamic> json) = _$_User.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'display_name')
  String get displayName => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'user_group_id')
  String get userGroupId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'user_group')
  UserGroup? get userGroup => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'is_read_only')
  bool get isReadOnly => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UserCopyWith<_User> get copyWith => throw _privateConstructorUsedError;
}
