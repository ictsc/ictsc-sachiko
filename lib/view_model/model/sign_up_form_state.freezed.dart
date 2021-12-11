// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'sign_up_form_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SignUpFormState _$SignUpFormStateFromJson(Map<String, dynamic> json) {
  return _SignUpFormState.fromJson(json);
}

/// @nodoc
class _$SignUpFormStateTearOff {
  const _$SignUpFormStateTearOff();

  _SignUpFormState call(
      {String? errorMessage,
      bool isLoading = false,
      bool isPasswordValidatePass = false,
      bool isNameValidatePass = false}) {
    return _SignUpFormState(
      errorMessage: errorMessage,
      isLoading: isLoading,
      isPasswordValidatePass: isPasswordValidatePass,
      isNameValidatePass: isNameValidatePass,
    );
  }

  SignUpFormState fromJson(Map<String, Object> json) {
    return SignUpFormState.fromJson(json);
  }
}

/// @nodoc
const $SignUpFormState = _$SignUpFormStateTearOff();

/// @nodoc
mixin _$SignUpFormState {
  String? get errorMessage => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isPasswordValidatePass => throw _privateConstructorUsedError;
  bool get isNameValidatePass => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SignUpFormStateCopyWith<SignUpFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpFormStateCopyWith<$Res> {
  factory $SignUpFormStateCopyWith(
          SignUpFormState value, $Res Function(SignUpFormState) then) =
      _$SignUpFormStateCopyWithImpl<$Res>;
  $Res call(
      {String? errorMessage,
      bool isLoading,
      bool isPasswordValidatePass,
      bool isNameValidatePass});
}

/// @nodoc
class _$SignUpFormStateCopyWithImpl<$Res>
    implements $SignUpFormStateCopyWith<$Res> {
  _$SignUpFormStateCopyWithImpl(this._value, this._then);

  final SignUpFormState _value;
  // ignore: unused_field
  final $Res Function(SignUpFormState) _then;

  @override
  $Res call({
    Object? errorMessage = freezed,
    Object? isLoading = freezed,
    Object? isPasswordValidatePass = freezed,
    Object? isNameValidatePass = freezed,
  }) {
    return _then(_value.copyWith(
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isPasswordValidatePass: isPasswordValidatePass == freezed
          ? _value.isPasswordValidatePass
          : isPasswordValidatePass // ignore: cast_nullable_to_non_nullable
              as bool,
      isNameValidatePass: isNameValidatePass == freezed
          ? _value.isNameValidatePass
          : isNameValidatePass // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$SignUpFormStateCopyWith<$Res>
    implements $SignUpFormStateCopyWith<$Res> {
  factory _$SignUpFormStateCopyWith(
          _SignUpFormState value, $Res Function(_SignUpFormState) then) =
      __$SignUpFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? errorMessage,
      bool isLoading,
      bool isPasswordValidatePass,
      bool isNameValidatePass});
}

/// @nodoc
class __$SignUpFormStateCopyWithImpl<$Res>
    extends _$SignUpFormStateCopyWithImpl<$Res>
    implements _$SignUpFormStateCopyWith<$Res> {
  __$SignUpFormStateCopyWithImpl(
      _SignUpFormState _value, $Res Function(_SignUpFormState) _then)
      : super(_value, (v) => _then(v as _SignUpFormState));

  @override
  _SignUpFormState get _value => super._value as _SignUpFormState;

  @override
  $Res call({
    Object? errorMessage = freezed,
    Object? isLoading = freezed,
    Object? isPasswordValidatePass = freezed,
    Object? isNameValidatePass = freezed,
  }) {
    return _then(_SignUpFormState(
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isPasswordValidatePass: isPasswordValidatePass == freezed
          ? _value.isPasswordValidatePass
          : isPasswordValidatePass // ignore: cast_nullable_to_non_nullable
              as bool,
      isNameValidatePass: isNameValidatePass == freezed
          ? _value.isNameValidatePass
          : isNameValidatePass // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SignUpFormState
    with DiagnosticableTreeMixin
    implements _SignUpFormState {
  const _$_SignUpFormState(
      {this.errorMessage,
      this.isLoading = false,
      this.isPasswordValidatePass = false,
      this.isNameValidatePass = false});

  factory _$_SignUpFormState.fromJson(Map<String, dynamic> json) =>
      _$$_SignUpFormStateFromJson(json);

  @override
  final String? errorMessage;
  @JsonKey(defaultValue: false)
  @override
  final bool isLoading;
  @JsonKey(defaultValue: false)
  @override
  final bool isPasswordValidatePass;
  @JsonKey(defaultValue: false)
  @override
  final bool isNameValidatePass;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignUpFormState(errorMessage: $errorMessage, isLoading: $isLoading, isPasswordValidatePass: $isPasswordValidatePass, isNameValidatePass: $isNameValidatePass)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SignUpFormState'))
      ..add(DiagnosticsProperty('errorMessage', errorMessage))
      ..add(DiagnosticsProperty('isLoading', isLoading))
      ..add(
          DiagnosticsProperty('isPasswordValidatePass', isPasswordValidatePass))
      ..add(DiagnosticsProperty('isNameValidatePass', isNameValidatePass));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SignUpFormState &&
            (identical(other.errorMessage, errorMessage) ||
                const DeepCollectionEquality()
                    .equals(other.errorMessage, errorMessage)) &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.isPasswordValidatePass, isPasswordValidatePass) ||
                const DeepCollectionEquality().equals(
                    other.isPasswordValidatePass, isPasswordValidatePass)) &&
            (identical(other.isNameValidatePass, isNameValidatePass) ||
                const DeepCollectionEquality()
                    .equals(other.isNameValidatePass, isNameValidatePass)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(errorMessage) ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(isPasswordValidatePass) ^
      const DeepCollectionEquality().hash(isNameValidatePass);

  @JsonKey(ignore: true)
  @override
  _$SignUpFormStateCopyWith<_SignUpFormState> get copyWith =>
      __$SignUpFormStateCopyWithImpl<_SignUpFormState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SignUpFormStateToJson(this);
  }
}

abstract class _SignUpFormState implements SignUpFormState {
  const factory _SignUpFormState(
      {String? errorMessage,
      bool isLoading,
      bool isPasswordValidatePass,
      bool isNameValidatePass}) = _$_SignUpFormState;

  factory _SignUpFormState.fromJson(Map<String, dynamic> json) =
      _$_SignUpFormState.fromJson;

  @override
  String? get errorMessage => throw _privateConstructorUsedError;
  @override
  bool get isLoading => throw _privateConstructorUsedError;
  @override
  bool get isPasswordValidatePass => throw _privateConstructorUsedError;
  @override
  bool get isNameValidatePass => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SignUpFormStateCopyWith<_SignUpFormState> get copyWith =>
      throw _privateConstructorUsedError;
}
