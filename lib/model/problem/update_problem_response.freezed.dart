// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'update_problem_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UpdateProblemResponse _$UpdateProblemResponseFromJson(
    Map<String, dynamic> json) {
  return _UpdateProblemResponse.fromJson(json);
}

/// @nodoc
class _$UpdateProblemResponseTearOff {
  const _$UpdateProblemResponseTearOff();

  _UpdateProblemResponse call({required int code, required Data data}) {
    return _UpdateProblemResponse(
      code: code,
      data: data,
    );
  }

  UpdateProblemResponse fromJson(Map<String, Object> json) {
    return UpdateProblemResponse.fromJson(json);
  }
}

/// @nodoc
const $UpdateProblemResponse = _$UpdateProblemResponseTearOff();

/// @nodoc
mixin _$UpdateProblemResponse {
  int get code => throw _privateConstructorUsedError;
  Data get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateProblemResponseCopyWith<UpdateProblemResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateProblemResponseCopyWith<$Res> {
  factory $UpdateProblemResponseCopyWith(UpdateProblemResponse value,
          $Res Function(UpdateProblemResponse) then) =
      _$UpdateProblemResponseCopyWithImpl<$Res>;
  $Res call({int code, Data data});

  $DataCopyWith<$Res> get data;
}

/// @nodoc
class _$UpdateProblemResponseCopyWithImpl<$Res>
    implements $UpdateProblemResponseCopyWith<$Res> {
  _$UpdateProblemResponseCopyWithImpl(this._value, this._then);

  final UpdateProblemResponse _value;
  // ignore: unused_field
  final $Res Function(UpdateProblemResponse) _then;

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
abstract class _$UpdateProblemResponseCopyWith<$Res>
    implements $UpdateProblemResponseCopyWith<$Res> {
  factory _$UpdateProblemResponseCopyWith(_UpdateProblemResponse value,
          $Res Function(_UpdateProblemResponse) then) =
      __$UpdateProblemResponseCopyWithImpl<$Res>;
  @override
  $Res call({int code, Data data});

  @override
  $DataCopyWith<$Res> get data;
}

/// @nodoc
class __$UpdateProblemResponseCopyWithImpl<$Res>
    extends _$UpdateProblemResponseCopyWithImpl<$Res>
    implements _$UpdateProblemResponseCopyWith<$Res> {
  __$UpdateProblemResponseCopyWithImpl(_UpdateProblemResponse _value,
      $Res Function(_UpdateProblemResponse) _then)
      : super(_value, (v) => _then(v as _UpdateProblemResponse));

  @override
  _UpdateProblemResponse get _value => super._value as _UpdateProblemResponse;

  @override
  $Res call({
    Object? code = freezed,
    Object? data = freezed,
  }) {
    return _then(_UpdateProblemResponse(
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
class _$_UpdateProblemResponse
    with DiagnosticableTreeMixin
    implements _UpdateProblemResponse {
  const _$_UpdateProblemResponse({required this.code, required this.data});

  factory _$_UpdateProblemResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_UpdateProblemResponseFromJson(json);

  @override
  final int code;
  @override
  final Data data;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UpdateProblemResponse(code: $code, data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UpdateProblemResponse'))
      ..add(DiagnosticsProperty('code', code))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UpdateProblemResponse &&
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
  _$UpdateProblemResponseCopyWith<_UpdateProblemResponse> get copyWith =>
      __$UpdateProblemResponseCopyWithImpl<_UpdateProblemResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_UpdateProblemResponseToJson(this);
  }
}

abstract class _UpdateProblemResponse implements UpdateProblemResponse {
  const factory _UpdateProblemResponse(
      {required int code, required Data data}) = _$_UpdateProblemResponse;

  factory _UpdateProblemResponse.fromJson(Map<String, dynamic> json) =
      _$_UpdateProblemResponse.fromJson;

  @override
  int get code => throw _privateConstructorUsedError;
  @override
  Data get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UpdateProblemResponseCopyWith<_UpdateProblemResponse> get copyWith =>
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
