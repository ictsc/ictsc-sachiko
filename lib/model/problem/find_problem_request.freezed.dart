// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'find_problem_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FindProblemRequest _$FindProblemRequestFromJson(Map<String, dynamic> json) {
  return _FindProblemRequest.fromJson(json);
}

/// @nodoc
class _$FindProblemRequestTearOff {
  const _$FindProblemRequestTearOff();

  _FindProblemRequest call({required String id}) {
    return _FindProblemRequest(
      id: id,
    );
  }

  FindProblemRequest fromJson(Map<String, Object> json) {
    return FindProblemRequest.fromJson(json);
  }
}

/// @nodoc
const $FindProblemRequest = _$FindProblemRequestTearOff();

/// @nodoc
mixin _$FindProblemRequest {
  String get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FindProblemRequestCopyWith<FindProblemRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FindProblemRequestCopyWith<$Res> {
  factory $FindProblemRequestCopyWith(
          FindProblemRequest value, $Res Function(FindProblemRequest) then) =
      _$FindProblemRequestCopyWithImpl<$Res>;
  $Res call({String id});
}

/// @nodoc
class _$FindProblemRequestCopyWithImpl<$Res>
    implements $FindProblemRequestCopyWith<$Res> {
  _$FindProblemRequestCopyWithImpl(this._value, this._then);

  final FindProblemRequest _value;
  // ignore: unused_field
  final $Res Function(FindProblemRequest) _then;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$FindProblemRequestCopyWith<$Res>
    implements $FindProblemRequestCopyWith<$Res> {
  factory _$FindProblemRequestCopyWith(
          _FindProblemRequest value, $Res Function(_FindProblemRequest) then) =
      __$FindProblemRequestCopyWithImpl<$Res>;
  @override
  $Res call({String id});
}

/// @nodoc
class __$FindProblemRequestCopyWithImpl<$Res>
    extends _$FindProblemRequestCopyWithImpl<$Res>
    implements _$FindProblemRequestCopyWith<$Res> {
  __$FindProblemRequestCopyWithImpl(
      _FindProblemRequest _value, $Res Function(_FindProblemRequest) _then)
      : super(_value, (v) => _then(v as _FindProblemRequest));

  @override
  _FindProblemRequest get _value => super._value as _FindProblemRequest;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_FindProblemRequest(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FindProblemRequest
    with DiagnosticableTreeMixin
    implements _FindProblemRequest {
  const _$_FindProblemRequest({required this.id});

  factory _$_FindProblemRequest.fromJson(Map<String, dynamic> json) =>
      _$_$_FindProblemRequestFromJson(json);

  @override
  final String id;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FindProblemRequest(id: $id)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FindProblemRequest'))
      ..add(DiagnosticsProperty('id', id));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FindProblemRequest &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id);

  @JsonKey(ignore: true)
  @override
  _$FindProblemRequestCopyWith<_FindProblemRequest> get copyWith =>
      __$FindProblemRequestCopyWithImpl<_FindProblemRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_FindProblemRequestToJson(this);
  }
}

abstract class _FindProblemRequest implements FindProblemRequest {
  const factory _FindProblemRequest({required String id}) =
      _$_FindProblemRequest;

  factory _FindProblemRequest.fromJson(Map<String, dynamic> json) =
      _$_FindProblemRequest.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$FindProblemRequestCopyWith<_FindProblemRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
