// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'find_all_problem_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FindAllProblemResponse _$FindAllProblemResponseFromJson(
    Map<String, dynamic> json) {
  return _FindAllProblemResponse.fromJson(json);
}

/// @nodoc
class _$FindAllProblemResponseTearOff {
  const _$FindAllProblemResponseTearOff();

  _FindAllProblemResponse call({required int code, required Data data}) {
    return _FindAllProblemResponse(
      code: code,
      data: data,
    );
  }

  FindAllProblemResponse fromJson(Map<String, Object> json) {
    return FindAllProblemResponse.fromJson(json);
  }
}

/// @nodoc
const $FindAllProblemResponse = _$FindAllProblemResponseTearOff();

/// @nodoc
mixin _$FindAllProblemResponse {
  int get code => throw _privateConstructorUsedError;
  Data get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FindAllProblemResponseCopyWith<FindAllProblemResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FindAllProblemResponseCopyWith<$Res> {
  factory $FindAllProblemResponseCopyWith(FindAllProblemResponse value,
          $Res Function(FindAllProblemResponse) then) =
      _$FindAllProblemResponseCopyWithImpl<$Res>;
  $Res call({int code, Data data});

  $DataCopyWith<$Res> get data;
}

/// @nodoc
class _$FindAllProblemResponseCopyWithImpl<$Res>
    implements $FindAllProblemResponseCopyWith<$Res> {
  _$FindAllProblemResponseCopyWithImpl(this._value, this._then);

  final FindAllProblemResponse _value;
  // ignore: unused_field
  final $Res Function(FindAllProblemResponse) _then;

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
abstract class _$FindAllProblemResponseCopyWith<$Res>
    implements $FindAllProblemResponseCopyWith<$Res> {
  factory _$FindAllProblemResponseCopyWith(_FindAllProblemResponse value,
          $Res Function(_FindAllProblemResponse) then) =
      __$FindAllProblemResponseCopyWithImpl<$Res>;
  @override
  $Res call({int code, Data data});

  @override
  $DataCopyWith<$Res> get data;
}

/// @nodoc
class __$FindAllProblemResponseCopyWithImpl<$Res>
    extends _$FindAllProblemResponseCopyWithImpl<$Res>
    implements _$FindAllProblemResponseCopyWith<$Res> {
  __$FindAllProblemResponseCopyWithImpl(_FindAllProblemResponse _value,
      $Res Function(_FindAllProblemResponse) _then)
      : super(_value, (v) => _then(v as _FindAllProblemResponse));

  @override
  _FindAllProblemResponse get _value => super._value as _FindAllProblemResponse;

  @override
  $Res call({
    Object? code = freezed,
    Object? data = freezed,
  }) {
    return _then(_FindAllProblemResponse(
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
class _$_FindAllProblemResponse
    with DiagnosticableTreeMixin
    implements _FindAllProblemResponse {
  const _$_FindAllProblemResponse({required this.code, required this.data});

  factory _$_FindAllProblemResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_FindAllProblemResponseFromJson(json);

  @override
  final int code;
  @override
  final Data data;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FindAllProblemResponse(code: $code, data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FindAllProblemResponse'))
      ..add(DiagnosticsProperty('code', code))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FindAllProblemResponse &&
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
  _$FindAllProblemResponseCopyWith<_FindAllProblemResponse> get copyWith =>
      __$FindAllProblemResponseCopyWithImpl<_FindAllProblemResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_FindAllProblemResponseToJson(this);
  }
}

abstract class _FindAllProblemResponse implements FindAllProblemResponse {
  const factory _FindAllProblemResponse(
      {required int code, required Data data}) = _$_FindAllProblemResponse;

  factory _FindAllProblemResponse.fromJson(Map<String, dynamic> json) =
      _$_FindAllProblemResponse.fromJson;

  @override
  int get code => throw _privateConstructorUsedError;
  @override
  Data get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$FindAllProblemResponseCopyWith<_FindAllProblemResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
class _$DataTearOff {
  const _$DataTearOff();

  _Data call({required List<Problem> problems}) {
    return _Data(
      problems: problems,
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
  List<Problem> get problems => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataCopyWith<Data> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) then) =
      _$DataCopyWithImpl<$Res>;
  $Res call({List<Problem> problems});
}

/// @nodoc
class _$DataCopyWithImpl<$Res> implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(this._value, this._then);

  final Data _value;
  // ignore: unused_field
  final $Res Function(Data) _then;

  @override
  $Res call({
    Object? problems = freezed,
  }) {
    return _then(_value.copyWith(
      problems: problems == freezed
          ? _value.problems
          : problems // ignore: cast_nullable_to_non_nullable
              as List<Problem>,
    ));
  }
}

/// @nodoc
abstract class _$DataCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$DataCopyWith(_Data value, $Res Function(_Data) then) =
      __$DataCopyWithImpl<$Res>;
  @override
  $Res call({List<Problem> problems});
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
    Object? problems = freezed,
  }) {
    return _then(_Data(
      problems: problems == freezed
          ? _value.problems
          : problems // ignore: cast_nullable_to_non_nullable
              as List<Problem>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Data with DiagnosticableTreeMixin implements _Data {
  const _$_Data({required this.problems});

  factory _$_Data.fromJson(Map<String, dynamic> json) =>
      _$_$_DataFromJson(json);

  @override
  final List<Problem> problems;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Data(problems: $problems)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Data'))
      ..add(DiagnosticsProperty('problems', problems));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Data &&
            (identical(other.problems, problems) ||
                const DeepCollectionEquality()
                    .equals(other.problems, problems)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(problems);

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
  const factory _Data({required List<Problem> problems}) = _$_Data;

  factory _Data.fromJson(Map<String, dynamic> json) = _$_Data.fromJson;

  @override
  List<Problem> get problems => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DataCopyWith<_Data> get copyWith => throw _privateConstructorUsedError;
}
