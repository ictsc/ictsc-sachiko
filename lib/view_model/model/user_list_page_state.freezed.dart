// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_list_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserListPageState _$UserListPageStateFromJson(Map<String, dynamic> json) {
  return _UserListPageState.fromJson(json);
}

/// @nodoc
class _$UserListPageStateTearOff {
  const _$UserListPageStateTearOff();

  _UserListPageState call(
      {dynamic isLoading = false,
      List<UserGroupDetail> userGroups = const []}) {
    return _UserListPageState(
      isLoading: isLoading,
      userGroups: userGroups,
    );
  }

  UserListPageState fromJson(Map<String, Object> json) {
    return UserListPageState.fromJson(json);
  }
}

/// @nodoc
const $UserListPageState = _$UserListPageStateTearOff();

/// @nodoc
mixin _$UserListPageState {
  dynamic get isLoading => throw _privateConstructorUsedError;
  List<UserGroupDetail> get userGroups => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserListPageStateCopyWith<UserListPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserListPageStateCopyWith<$Res> {
  factory $UserListPageStateCopyWith(
          UserListPageState value, $Res Function(UserListPageState) then) =
      _$UserListPageStateCopyWithImpl<$Res>;
  $Res call({dynamic isLoading, List<UserGroupDetail> userGroups});
}

/// @nodoc
class _$UserListPageStateCopyWithImpl<$Res>
    implements $UserListPageStateCopyWith<$Res> {
  _$UserListPageStateCopyWithImpl(this._value, this._then);

  final UserListPageState _value;
  // ignore: unused_field
  final $Res Function(UserListPageState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? userGroups = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as dynamic,
      userGroups: userGroups == freezed
          ? _value.userGroups
          : userGroups // ignore: cast_nullable_to_non_nullable
              as List<UserGroupDetail>,
    ));
  }
}

/// @nodoc
abstract class _$UserListPageStateCopyWith<$Res>
    implements $UserListPageStateCopyWith<$Res> {
  factory _$UserListPageStateCopyWith(
          _UserListPageState value, $Res Function(_UserListPageState) then) =
      __$UserListPageStateCopyWithImpl<$Res>;
  @override
  $Res call({dynamic isLoading, List<UserGroupDetail> userGroups});
}

/// @nodoc
class __$UserListPageStateCopyWithImpl<$Res>
    extends _$UserListPageStateCopyWithImpl<$Res>
    implements _$UserListPageStateCopyWith<$Res> {
  __$UserListPageStateCopyWithImpl(
      _UserListPageState _value, $Res Function(_UserListPageState) _then)
      : super(_value, (v) => _then(v as _UserListPageState));

  @override
  _UserListPageState get _value => super._value as _UserListPageState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? userGroups = freezed,
  }) {
    return _then(_UserListPageState(
      isLoading: isLoading == freezed ? _value.isLoading : isLoading,
      userGroups: userGroups == freezed
          ? _value.userGroups
          : userGroups // ignore: cast_nullable_to_non_nullable
              as List<UserGroupDetail>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserListPageState
    with DiagnosticableTreeMixin
    implements _UserListPageState {
  const _$_UserListPageState(
      {this.isLoading = false, this.userGroups = const []});

  factory _$_UserListPageState.fromJson(Map<String, dynamic> json) =>
      _$$_UserListPageStateFromJson(json);

  @JsonKey(defaultValue: false)
  @override
  final dynamic isLoading;
  @JsonKey(defaultValue: const [])
  @override
  final List<UserGroupDetail> userGroups;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserListPageState(isLoading: $isLoading, userGroups: $userGroups)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserListPageState'))
      ..add(DiagnosticsProperty('isLoading', isLoading))
      ..add(DiagnosticsProperty('userGroups', userGroups));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserListPageState &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.userGroups, userGroups) ||
                const DeepCollectionEquality()
                    .equals(other.userGroups, userGroups)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(userGroups);

  @JsonKey(ignore: true)
  @override
  _$UserListPageStateCopyWith<_UserListPageState> get copyWith =>
      __$UserListPageStateCopyWithImpl<_UserListPageState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserListPageStateToJson(this);
  }
}

abstract class _UserListPageState implements UserListPageState {
  const factory _UserListPageState(
      {dynamic isLoading,
      List<UserGroupDetail> userGroups}) = _$_UserListPageState;

  factory _UserListPageState.fromJson(Map<String, dynamic> json) =
      _$_UserListPageState.fromJson;

  @override
  dynamic get isLoading => throw _privateConstructorUsedError;
  @override
  List<UserGroupDetail> get userGroups => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UserListPageStateCopyWith<_UserListPageState> get copyWith =>
      throw _privateConstructorUsedError;
}
