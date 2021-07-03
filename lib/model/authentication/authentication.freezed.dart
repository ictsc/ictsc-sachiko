// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'authentication.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Authentication _$AuthenticationFromJson(Map<String, dynamic> json) {
  return _Authentication.fromJson(json);
}

/// @nodoc
class _$AuthenticationTearOff {
  const _$AuthenticationTearOff();

  _Authentication call({bool isLoginChecked = false, User? user}) {
    return _Authentication(
      isLoginChecked: isLoginChecked,
      user: user,
    );
  }

  Authentication fromJson(Map<String, Object> json) {
    return Authentication.fromJson(json);
  }
}

/// @nodoc
const $Authentication = _$AuthenticationTearOff();

/// @nodoc
mixin _$Authentication {
  bool get isLoginChecked => throw _privateConstructorUsedError;
  User? get user => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthenticationCopyWith<Authentication> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticationCopyWith<$Res> {
  factory $AuthenticationCopyWith(
          Authentication value, $Res Function(Authentication) then) =
      _$AuthenticationCopyWithImpl<$Res>;
  $Res call({bool isLoginChecked, User? user});

  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class _$AuthenticationCopyWithImpl<$Res>
    implements $AuthenticationCopyWith<$Res> {
  _$AuthenticationCopyWithImpl(this._value, this._then);

  final Authentication _value;
  // ignore: unused_field
  final $Res Function(Authentication) _then;

  @override
  $Res call({
    Object? isLoginChecked = freezed,
    Object? user = freezed,
  }) {
    return _then(_value.copyWith(
      isLoginChecked: isLoginChecked == freezed
          ? _value.isLoginChecked
          : isLoginChecked // ignore: cast_nullable_to_non_nullable
              as bool,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
    ));
  }

  @override
  $UserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc
abstract class _$AuthenticationCopyWith<$Res>
    implements $AuthenticationCopyWith<$Res> {
  factory _$AuthenticationCopyWith(
          _Authentication value, $Res Function(_Authentication) then) =
      __$AuthenticationCopyWithImpl<$Res>;
  @override
  $Res call({bool isLoginChecked, User? user});

  @override
  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class __$AuthenticationCopyWithImpl<$Res>
    extends _$AuthenticationCopyWithImpl<$Res>
    implements _$AuthenticationCopyWith<$Res> {
  __$AuthenticationCopyWithImpl(
      _Authentication _value, $Res Function(_Authentication) _then)
      : super(_value, (v) => _then(v as _Authentication));

  @override
  _Authentication get _value => super._value as _Authentication;

  @override
  $Res call({
    Object? isLoginChecked = freezed,
    Object? user = freezed,
  }) {
    return _then(_Authentication(
      isLoginChecked: isLoginChecked == freezed
          ? _value.isLoginChecked
          : isLoginChecked // ignore: cast_nullable_to_non_nullable
              as bool,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Authentication extends _Authentication with DiagnosticableTreeMixin {
  const _$_Authentication({this.isLoginChecked = false, this.user}) : super._();

  factory _$_Authentication.fromJson(Map<String, dynamic> json) =>
      _$_$_AuthenticationFromJson(json);

  @JsonKey(defaultValue: false)
  @override
  final bool isLoginChecked;
  @override
  final User? user;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Authentication(isLoginChecked: $isLoginChecked, user: $user)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Authentication'))
      ..add(DiagnosticsProperty('isLoginChecked', isLoginChecked))
      ..add(DiagnosticsProperty('user', user));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Authentication &&
            (identical(other.isLoginChecked, isLoginChecked) ||
                const DeepCollectionEquality()
                    .equals(other.isLoginChecked, isLoginChecked)) &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isLoginChecked) ^
      const DeepCollectionEquality().hash(user);

  @JsonKey(ignore: true)
  @override
  _$AuthenticationCopyWith<_Authentication> get copyWith =>
      __$AuthenticationCopyWithImpl<_Authentication>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_AuthenticationToJson(this);
  }
}

abstract class _Authentication extends Authentication {
  const factory _Authentication({bool isLoginChecked, User? user}) =
      _$_Authentication;
  const _Authentication._() : super._();

  factory _Authentication.fromJson(Map<String, dynamic> json) =
      _$_Authentication.fromJson;

  @override
  bool get isLoginChecked => throw _privateConstructorUsedError;
  @override
  User? get user => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AuthenticationCopyWith<_Authentication> get copyWith =>
      throw _privateConstructorUsedError;
}
