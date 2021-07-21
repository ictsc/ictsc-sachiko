// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'delete_problem_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DeleteProblemResponse _$DeleteProblemResponseFromJson(
    Map<String, dynamic> json) {
  return _DeleteProblemResponse.fromJson(json);
}

/// @nodoc
class _$DeleteProblemResponseTearOff {
  const _$DeleteProblemResponseTearOff();

  _DeleteProblemResponse call({required int code}) {
    return _DeleteProblemResponse(
      code: code,
    );
  }

  DeleteProblemResponse fromJson(Map<String, Object> json) {
    return DeleteProblemResponse.fromJson(json);
  }
}

/// @nodoc
const $DeleteProblemResponse = _$DeleteProblemResponseTearOff();

/// @nodoc
mixin _$DeleteProblemResponse {
  int get code => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeleteProblemResponseCopyWith<DeleteProblemResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteProblemResponseCopyWith<$Res> {
  factory $DeleteProblemResponseCopyWith(DeleteProblemResponse value,
          $Res Function(DeleteProblemResponse) then) =
      _$DeleteProblemResponseCopyWithImpl<$Res>;
  $Res call({int code});
}

/// @nodoc
class _$DeleteProblemResponseCopyWithImpl<$Res>
    implements $DeleteProblemResponseCopyWith<$Res> {
  _$DeleteProblemResponseCopyWithImpl(this._value, this._then);

  final DeleteProblemResponse _value;
  // ignore: unused_field
  final $Res Function(DeleteProblemResponse) _then;

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
abstract class _$DeleteProblemResponseCopyWith<$Res>
    implements $DeleteProblemResponseCopyWith<$Res> {
  factory _$DeleteProblemResponseCopyWith(_DeleteProblemResponse value,
          $Res Function(_DeleteProblemResponse) then) =
      __$DeleteProblemResponseCopyWithImpl<$Res>;
  @override
  $Res call({int code});
}

/// @nodoc
class __$DeleteProblemResponseCopyWithImpl<$Res>
    extends _$DeleteProblemResponseCopyWithImpl<$Res>
    implements _$DeleteProblemResponseCopyWith<$Res> {
  __$DeleteProblemResponseCopyWithImpl(_DeleteProblemResponse _value,
      $Res Function(_DeleteProblemResponse) _then)
      : super(_value, (v) => _then(v as _DeleteProblemResponse));

  @override
  _DeleteProblemResponse get _value => super._value as _DeleteProblemResponse;

  @override
  $Res call({
    Object? code = freezed,
  }) {
    return _then(_DeleteProblemResponse(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DeleteProblemResponse
    with DiagnosticableTreeMixin
    implements _DeleteProblemResponse {
  const _$_DeleteProblemResponse({required this.code});

  factory _$_DeleteProblemResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_DeleteProblemResponseFromJson(json);

  @override
  final int code;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DeleteProblemResponse(code: $code)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DeleteProblemResponse'))
      ..add(DiagnosticsProperty('code', code));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DeleteProblemResponse &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(code);

  @JsonKey(ignore: true)
  @override
  _$DeleteProblemResponseCopyWith<_DeleteProblemResponse> get copyWith =>
      __$DeleteProblemResponseCopyWithImpl<_DeleteProblemResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_DeleteProblemResponseToJson(this);
  }
}

abstract class _DeleteProblemResponse implements DeleteProblemResponse {
  const factory _DeleteProblemResponse({required int code}) =
      _$_DeleteProblemResponse;

  factory _DeleteProblemResponse.fromJson(Map<String, dynamic> json) =
      _$_DeleteProblemResponse.fromJson;

  @override
  int get code => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DeleteProblemResponseCopyWith<_DeleteProblemResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
