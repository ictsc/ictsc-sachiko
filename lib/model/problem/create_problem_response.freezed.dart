// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'create_problem_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CreateProblemResponse _$CreateProblemResponseFromJson(
    Map<String, dynamic> json) {
  return _CreateProblemResponse.fromJson(json);
}

/// @nodoc
class _$CreateProblemResponseTearOff {
  const _$CreateProblemResponseTearOff();

  _CreateProblemResponse call({required int code, required Data data}) {
    return _CreateProblemResponse(
      code: code,
      data: data,
    );
  }

  CreateProblemResponse fromJson(Map<String, Object> json) {
    return CreateProblemResponse.fromJson(json);
  }
}

/// @nodoc
const $CreateProblemResponse = _$CreateProblemResponseTearOff();

/// @nodoc
mixin _$CreateProblemResponse {
  int get code => throw _privateConstructorUsedError;
  Data get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateProblemResponseCopyWith<CreateProblemResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateProblemResponseCopyWith<$Res> {
  factory $CreateProblemResponseCopyWith(CreateProblemResponse value,
          $Res Function(CreateProblemResponse) then) =
      _$CreateProblemResponseCopyWithImpl<$Res>;
  $Res call({int code, Data data});

  $DataCopyWith<$Res> get data;
}

/// @nodoc
class _$CreateProblemResponseCopyWithImpl<$Res>
    implements $CreateProblemResponseCopyWith<$Res> {
  _$CreateProblemResponseCopyWithImpl(this._value, this._then);

  final CreateProblemResponse _value;
  // ignore: unused_field
  final $Res Function(CreateProblemResponse) _then;

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
              as Data,
    ));
  }

  @override
  $DataCopyWith<$Res> get data {
    return $DataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
abstract class _$CreateProblemResponseCopyWith<$Res>
    implements $CreateProblemResponseCopyWith<$Res> {
  factory _$CreateProblemResponseCopyWith(_CreateProblemResponse value,
          $Res Function(_CreateProblemResponse) then) =
      __$CreateProblemResponseCopyWithImpl<$Res>;
  @override
  $Res call({int code, Data data});

  @override
  $DataCopyWith<$Res> get data;
}

/// @nodoc
class __$CreateProblemResponseCopyWithImpl<$Res>
    extends _$CreateProblemResponseCopyWithImpl<$Res>
    implements _$CreateProblemResponseCopyWith<$Res> {
  __$CreateProblemResponseCopyWithImpl(_CreateProblemResponse _value,
      $Res Function(_CreateProblemResponse) _then)
      : super(_value, (v) => _then(v as _CreateProblemResponse));

  @override
  _CreateProblemResponse get _value => super._value as _CreateProblemResponse;

  @override
  $Res call({
    Object? code = freezed,
    Object? data = freezed,
  }) {
    return _then(_CreateProblemResponse(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CreateProblemResponse
    with DiagnosticableTreeMixin
    implements _CreateProblemResponse {
  const _$_CreateProblemResponse({required this.code, required this.data});

  factory _$_CreateProblemResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_CreateProblemResponseFromJson(json);

  @override
  final int code;
  @override
  final Data data;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CreateProblemResponse(code: $code, data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CreateProblemResponse'))
      ..add(DiagnosticsProperty('code', code))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CreateProblemResponse &&
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
  _$CreateProblemResponseCopyWith<_CreateProblemResponse> get copyWith =>
      __$CreateProblemResponseCopyWithImpl<_CreateProblemResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CreateProblemResponseToJson(this);
  }
}

abstract class _CreateProblemResponse implements CreateProblemResponse {
  const factory _CreateProblemResponse(
      {required int code, required Data data}) = _$_CreateProblemResponse;

  factory _CreateProblemResponse.fromJson(Map<String, dynamic> json) =
      _$_CreateProblemResponse.fromJson;

  @override
  int get code => throw _privateConstructorUsedError;
  @override
  Data get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CreateProblemResponseCopyWith<_CreateProblemResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
class _$DataTearOff {
  const _$DataTearOff();

  _Data call({required Problem problem}) {
    return _Data(
      problem: problem,
    );
  }

  Data fromJson(Map<String, Object> json) {
    return Data.fromJson(json);
  }
}

/// @nodoc
const $Data = _$DataTearOff();

/// @nodoc
mixin _$Data {
  Problem get problem => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataCopyWith<Data> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) then) =
      _$DataCopyWithImpl<$Res>;
  $Res call({Problem problem});

  $ProblemCopyWith<$Res> get problem;
}

/// @nodoc
class _$DataCopyWithImpl<$Res> implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(this._value, this._then);

  final Data _value;
  // ignore: unused_field
  final $Res Function(Data) _then;

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
abstract class _$DataCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$DataCopyWith(_Data value, $Res Function(_Data) then) =
      __$DataCopyWithImpl<$Res>;
  @override
  $Res call({Problem problem});

  @override
  $ProblemCopyWith<$Res> get problem;
}

/// @nodoc
class __$DataCopyWithImpl<$Res> extends _$DataCopyWithImpl<$Res>
    implements _$DataCopyWith<$Res> {
  __$DataCopyWithImpl(_Data _value, $Res Function(_Data) _then)
      : super(_value, (v) => _then(v as _Data));

  @override
  _Data get _value => super._value as _Data;

  @override
  $Res call({
    Object? problem = freezed,
  }) {
    return _then(_Data(
      problem: problem == freezed
          ? _value.problem
          : problem // ignore: cast_nullable_to_non_nullable
              as Problem,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Data with DiagnosticableTreeMixin implements _Data {
  const _$_Data({required this.problem});

  factory _$_Data.fromJson(Map<String, dynamic> json) =>
      _$_$_DataFromJson(json);

  @override
  final Problem problem;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Data(problem: $problem)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Data'))
      ..add(DiagnosticsProperty('problem', problem));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Data &&
            (identical(other.problem, problem) ||
                const DeepCollectionEquality().equals(other.problem, problem)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(problem);

  @JsonKey(ignore: true)
  @override
  _$DataCopyWith<_Data> get copyWith =>
      __$DataCopyWithImpl<_Data>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_DataToJson(this);
  }
}

abstract class _Data implements Data {
  const factory _Data({required Problem problem}) = _$_Data;

  factory _Data.fromJson(Map<String, dynamic> json) = _$_Data.fromJson;

  @override
  Problem get problem => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DataCopyWith<_Data> get copyWith => throw _privateConstructorUsedError;
}
