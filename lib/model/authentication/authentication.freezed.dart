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

  _Authentication call({bool isLogin = false}) {
    return _Authentication(
      isLogin: isLogin,
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
  bool get isLogin => throw _privateConstructorUsedError;

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
  $Res call({bool isLogin});
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
    Object? isLogin = freezed,
  }) {
    return _then(_value.copyWith(
      isLogin: isLogin == freezed
          ? _value.isLogin
          : isLogin // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$AuthenticationCopyWith<$Res>
    implements $AuthenticationCopyWith<$Res> {
  factory _$AuthenticationCopyWith(
          _Authentication value, $Res Function(_Authentication) then) =
      __$AuthenticationCopyWithImpl<$Res>;
  @override
  $Res call({bool isLogin});
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
    Object? isLogin = freezed,
  }) {
    return _then(_Authentication(
      isLogin: isLogin == freezed
          ? _value.isLogin
          : isLogin // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Authentication
    with DiagnosticableTreeMixin
    implements _Authentication {
  const _$_Authentication({this.isLogin = false});

  factory _$_Authentication.fromJson(Map<String, dynamic> json) =>
      _$_$_AuthenticationFromJson(json);

  @JsonKey(defaultValue: false)
  @override
  final bool isLogin;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Authentication(isLogin: $isLogin)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Authentication'))
      ..add(DiagnosticsProperty('isLogin', isLogin));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Authentication &&
            (identical(other.isLogin, isLogin) ||
                const DeepCollectionEquality().equals(other.isLogin, isLogin)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(isLogin);

  @JsonKey(ignore: true)
  @override
  _$AuthenticationCopyWith<_Authentication> get copyWith =>
      __$AuthenticationCopyWithImpl<_Authentication>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_AuthenticationToJson(this);
  }
}

abstract class _Authentication implements Authentication {
  const factory _Authentication({bool isLogin}) = _$_Authentication;

  factory _Authentication.fromJson(Map<String, dynamic> json) =
      _$_Authentication.fromJson;

  @override
  bool get isLogin => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AuthenticationCopyWith<_Authentication> get copyWith =>
      throw _privateConstructorUsedError;
}
