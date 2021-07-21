// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'delete_problem_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DeleteProblemRequest _$DeleteProblemRequestFromJson(Map<String, dynamic> json) {
  return _DeleteProblemRequest.fromJson(json);
}

/// @nodoc
class _$DeleteProblemRequestTearOff {
  const _$DeleteProblemRequestTearOff();

  _DeleteProblemRequest call({required String id}) {
    return _DeleteProblemRequest(
      id: id,
    );
  }

  DeleteProblemRequest fromJson(Map<String, Object> json) {
    return DeleteProblemRequest.fromJson(json);
  }
}

/// @nodoc
const $DeleteProblemRequest = _$DeleteProblemRequestTearOff();

/// @nodoc
mixin _$DeleteProblemRequest {
  String get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeleteProblemRequestCopyWith<DeleteProblemRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteProblemRequestCopyWith<$Res> {
  factory $DeleteProblemRequestCopyWith(DeleteProblemRequest value,
          $Res Function(DeleteProblemRequest) then) =
      _$DeleteProblemRequestCopyWithImpl<$Res>;
  $Res call({String id});
}

/// @nodoc
class _$DeleteProblemRequestCopyWithImpl<$Res>
    implements $DeleteProblemRequestCopyWith<$Res> {
  _$DeleteProblemRequestCopyWithImpl(this._value, this._then);

  final DeleteProblemRequest _value;
  // ignore: unused_field
  final $Res Function(DeleteProblemRequest) _then;

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
abstract class _$DeleteProblemRequestCopyWith<$Res>
    implements $DeleteProblemRequestCopyWith<$Res> {
  factory _$DeleteProblemRequestCopyWith(_DeleteProblemRequest value,
          $Res Function(_DeleteProblemRequest) then) =
      __$DeleteProblemRequestCopyWithImpl<$Res>;
  @override
  $Res call({String id});
}

/// @nodoc
class __$DeleteProblemRequestCopyWithImpl<$Res>
    extends _$DeleteProblemRequestCopyWithImpl<$Res>
    implements _$DeleteProblemRequestCopyWith<$Res> {
  __$DeleteProblemRequestCopyWithImpl(
      _DeleteProblemRequest _value, $Res Function(_DeleteProblemRequest) _then)
      : super(_value, (v) => _then(v as _DeleteProblemRequest));

  @override
  _DeleteProblemRequest get _value => super._value as _DeleteProblemRequest;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_DeleteProblemRequest(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DeleteProblemRequest
    with DiagnosticableTreeMixin
    implements _DeleteProblemRequest {
  const _$_DeleteProblemRequest({required this.id});

  factory _$_DeleteProblemRequest.fromJson(Map<String, dynamic> json) =>
      _$_$_DeleteProblemRequestFromJson(json);

  @override
  final String id;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DeleteProblemRequest(id: $id)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DeleteProblemRequest'))
      ..add(DiagnosticsProperty('id', id));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DeleteProblemRequest &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id);

  @JsonKey(ignore: true)
  @override
  _$DeleteProblemRequestCopyWith<_DeleteProblemRequest> get copyWith =>
      __$DeleteProblemRequestCopyWithImpl<_DeleteProblemRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_DeleteProblemRequestToJson(this);
  }
}

abstract class _DeleteProblemRequest implements DeleteProblemRequest {
  const factory _DeleteProblemRequest({required String id}) =
      _$_DeleteProblemRequest;

  factory _DeleteProblemRequest.fromJson(Map<String, dynamic> json) =
      _$_DeleteProblemRequest.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DeleteProblemRequestCopyWith<_DeleteProblemRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
