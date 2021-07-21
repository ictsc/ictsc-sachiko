// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'create_answer_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CreateAnswerResponse _$CreateAnswerResponseFromJson(Map<String, dynamic> json) {
  return _CreateAnswerResponse.fromJson(json);
}

/// @nodoc
class _$CreateAnswerResponseTearOff {
  const _$CreateAnswerResponseTearOff();

  _CreateAnswerResponse call({required int code, required Data data}) {
    return _CreateAnswerResponse(
      code: code,
      data: data,
    );
  }

  CreateAnswerResponse fromJson(Map<String, Object> json) {
    return CreateAnswerResponse.fromJson(json);
  }
}

/// @nodoc
const $CreateAnswerResponse = _$CreateAnswerResponseTearOff();

/// @nodoc
mixin _$CreateAnswerResponse {
  int get code => throw _privateConstructorUsedError;
  Data get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateAnswerResponseCopyWith<CreateAnswerResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateAnswerResponseCopyWith<$Res> {
  factory $CreateAnswerResponseCopyWith(CreateAnswerResponse value,
          $Res Function(CreateAnswerResponse) then) =
      _$CreateAnswerResponseCopyWithImpl<$Res>;
  $Res call({int code, Data data});

  $DataCopyWith<$Res> get data;
}

/// @nodoc
class _$CreateAnswerResponseCopyWithImpl<$Res>
    implements $CreateAnswerResponseCopyWith<$Res> {
  _$CreateAnswerResponseCopyWithImpl(this._value, this._then);

  final CreateAnswerResponse _value;
  // ignore: unused_field
  final $Res Function(CreateAnswerResponse) _then;

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
abstract class _$CreateAnswerResponseCopyWith<$Res>
    implements $CreateAnswerResponseCopyWith<$Res> {
  factory _$CreateAnswerResponseCopyWith(_CreateAnswerResponse value,
          $Res Function(_CreateAnswerResponse) then) =
      __$CreateAnswerResponseCopyWithImpl<$Res>;
  @override
  $Res call({int code, Data data});

  @override
  $DataCopyWith<$Res> get data;
}

/// @nodoc
class __$CreateAnswerResponseCopyWithImpl<$Res>
    extends _$CreateAnswerResponseCopyWithImpl<$Res>
    implements _$CreateAnswerResponseCopyWith<$Res> {
  __$CreateAnswerResponseCopyWithImpl(
      _CreateAnswerResponse _value, $Res Function(_CreateAnswerResponse) _then)
      : super(_value, (v) => _then(v as _CreateAnswerResponse));

  @override
  _CreateAnswerResponse get _value => super._value as _CreateAnswerResponse;

  @override
  $Res call({
    Object? code = freezed,
    Object? data = freezed,
  }) {
    return _then(_CreateAnswerResponse(
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
class _$_CreateAnswerResponse
    with DiagnosticableTreeMixin
    implements _CreateAnswerResponse {
  const _$_CreateAnswerResponse({required this.code, required this.data});

  factory _$_CreateAnswerResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_CreateAnswerResponseFromJson(json);

  @override
  final int code;
  @override
  final Data data;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CreateAnswerResponse(code: $code, data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CreateAnswerResponse'))
      ..add(DiagnosticsProperty('code', code))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CreateAnswerResponse &&
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
  _$CreateAnswerResponseCopyWith<_CreateAnswerResponse> get copyWith =>
      __$CreateAnswerResponseCopyWithImpl<_CreateAnswerResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CreateAnswerResponseToJson(this);
  }
}

abstract class _CreateAnswerResponse implements CreateAnswerResponse {
  const factory _CreateAnswerResponse({required int code, required Data data}) =
      _$_CreateAnswerResponse;

  factory _CreateAnswerResponse.fromJson(Map<String, dynamic> json) =
      _$_CreateAnswerResponse.fromJson;

  @override
  int get code => throw _privateConstructorUsedError;
  @override
  Data get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CreateAnswerResponseCopyWith<_CreateAnswerResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
class _$DataTearOff {
  const _$DataTearOff();

  _Data call({required Answer answer}) {
    return _Data(
      answer: answer,
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
  Answer get answer => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataCopyWith<Data> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) then) =
      _$DataCopyWithImpl<$Res>;
  $Res call({Answer answer});

  $AnswerCopyWith<$Res> get answer;
}

/// @nodoc
class _$DataCopyWithImpl<$Res> implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(this._value, this._then);

  final Data _value;
  // ignore: unused_field
  final $Res Function(Data) _then;

  @override
  $Res call({
    Object? answer = freezed,
  }) {
    return _then(_value.copyWith(
      answer: answer == freezed
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as Answer,
    ));
  }

  @override
  $AnswerCopyWith<$Res> get answer {
    return $AnswerCopyWith<$Res>(_value.answer, (value) {
      return _then(_value.copyWith(answer: value));
    });
  }
}

/// @nodoc
abstract class _$DataCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$DataCopyWith(_Data value, $Res Function(_Data) then) =
      __$DataCopyWithImpl<$Res>;
  @override
  $Res call({Answer answer});

  @override
  $AnswerCopyWith<$Res> get answer;
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
    Object? answer = freezed,
  }) {
    return _then(_Data(
      answer: answer == freezed
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as Answer,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Data with DiagnosticableTreeMixin implements _Data {
  const _$_Data({required this.answer});

  factory _$_Data.fromJson(Map<String, dynamic> json) =>
      _$_$_DataFromJson(json);

  @override
  final Answer answer;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Data(answer: $answer)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Data'))
      ..add(DiagnosticsProperty('answer', answer));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Data &&
            (identical(other.answer, answer) ||
                const DeepCollectionEquality().equals(other.answer, answer)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(answer);

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
  const factory _Data({required Answer answer}) = _$_Data;

  factory _Data.fromJson(Map<String, dynamic> json) = _$_Data.fromJson;

  @override
  Answer get answer => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DataCopyWith<_Data> get copyWith => throw _privateConstructorUsedError;
}
