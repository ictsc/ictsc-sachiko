// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'create_problem_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CreateProblemRequest _$CreateProblemRequestFromJson(Map<String, dynamic> json) {
  return _CreateProblemRequest.fromJson(json);
}

/// @nodoc
class _$CreateProblemRequestTearOff {
  const _$CreateProblemRequestTearOff();

  _CreateProblemRequest call({required Problem problem}) {
    return _CreateProblemRequest(
      problem: problem,
    );
  }

  CreateProblemRequest fromJson(Map<String, Object> json) {
    return CreateProblemRequest.fromJson(json);
  }
}

/// @nodoc
const $CreateProblemRequest = _$CreateProblemRequestTearOff();

/// @nodoc
mixin _$CreateProblemRequest {
  Problem get problem => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateProblemRequestCopyWith<CreateProblemRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateProblemRequestCopyWith<$Res> {
  factory $CreateProblemRequestCopyWith(CreateProblemRequest value,
          $Res Function(CreateProblemRequest) then) =
      _$CreateProblemRequestCopyWithImpl<$Res>;
  $Res call({Problem problem});

  $ProblemCopyWith<$Res> get problem;
}

/// @nodoc
class _$CreateProblemRequestCopyWithImpl<$Res>
    implements $CreateProblemRequestCopyWith<$Res> {
  _$CreateProblemRequestCopyWithImpl(this._value, this._then);

  final CreateProblemRequest _value;
  // ignore: unused_field
  final $Res Function(CreateProblemRequest) _then;

  @override
  $Res call({
    Object? problem = freezed,
  }) {
    return _then(_value.copyWith(
      problem: problem == freezed
          ? _value.problem
          : problem // ignore: cast_nullable_to_non_nullable
              as Problem,
    ));
  }

  @override
  $ProblemCopyWith<$Res> get problem {
    return $ProblemCopyWith<$Res>(_value.problem, (value) {
      return _then(_value.copyWith(problem: value));
    });
  }
}

/// @nodoc
abstract class _$CreateProblemRequestCopyWith<$Res>
    implements $CreateProblemRequestCopyWith<$Res> {
  factory _$CreateProblemRequestCopyWith(_CreateProblemRequest value,
          $Res Function(_CreateProblemRequest) then) =
      __$CreateProblemRequestCopyWithImpl<$Res>;
  @override
  $Res call({Problem problem});

  @override
  $ProblemCopyWith<$Res> get problem;
}

/// @nodoc
class __$CreateProblemRequestCopyWithImpl<$Res>
    extends _$CreateProblemRequestCopyWithImpl<$Res>
    implements _$CreateProblemRequestCopyWith<$Res> {
  __$CreateProblemRequestCopyWithImpl(
      _CreateProblemRequest _value, $Res Function(_CreateProblemRequest) _then)
      : super(_value, (v) => _then(v as _CreateProblemRequest));

  @override
  _CreateProblemRequest get _value => super._value as _CreateProblemRequest;

  @override
  $Res call({
    Object? problem = freezed,
  }) {
    return _then(_CreateProblemRequest(
      problem: problem == freezed
          ? _value.problem
          : problem // ignore: cast_nullable_to_non_nullable
              as Problem,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CreateProblemRequest
    with DiagnosticableTreeMixin
    implements _CreateProblemRequest {
  const _$_CreateProblemRequest({required this.problem});

  factory _$_CreateProblemRequest.fromJson(Map<String, dynamic> json) =>
      _$_$_CreateProblemRequestFromJson(json);

  @override
  final Problem problem;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CreateProblemRequest(problem: $problem)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CreateProblemRequest'))
      ..add(DiagnosticsProperty('problem', problem));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CreateProblemRequest &&
            (identical(other.problem, problem) ||
                const DeepCollectionEquality().equals(other.problem, problem)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(problem);

  @JsonKey(ignore: true)
  @override
  _$CreateProblemRequestCopyWith<_CreateProblemRequest> get copyWith =>
      __$CreateProblemRequestCopyWithImpl<_CreateProblemRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CreateProblemRequestToJson(this);
  }
}

abstract class _CreateProblemRequest implements CreateProblemRequest {
  const factory _CreateProblemRequest({required Problem problem}) =
      _$_CreateProblemRequest;

  factory _CreateProblemRequest.fromJson(Map<String, dynamic> json) =
      _$_CreateProblemRequest.fromJson;

  @override
  Problem get problem => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CreateProblemRequestCopyWith<_CreateProblemRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
