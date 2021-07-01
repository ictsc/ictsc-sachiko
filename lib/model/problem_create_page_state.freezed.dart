// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'problem_create_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProblemCreatePageState _$ProblemCreatePageStateFromJson(
    Map<String, dynamic> json) {
  return _ProblemCreatePageState.fromJson(json);
}

/// @nodoc
class _$ProblemCreatePageStateTearOff {
  const _$ProblemCreatePageStateTearOff();

  _ProblemCreatePageState call({bool isPreview = false}) {
    return _ProblemCreatePageState(
      isPreview: isPreview,
    );
  }

  ProblemCreatePageState fromJson(Map<String, Object> json) {
    return ProblemCreatePageState.fromJson(json);
  }
}

/// @nodoc
const $ProblemCreatePageState = _$ProblemCreatePageStateTearOff();

/// @nodoc
mixin _$ProblemCreatePageState {
  bool get isPreview => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProblemCreatePageStateCopyWith<ProblemCreatePageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProblemCreatePageStateCopyWith<$Res> {
  factory $ProblemCreatePageStateCopyWith(ProblemCreatePageState value,
          $Res Function(ProblemCreatePageState) then) =
      _$ProblemCreatePageStateCopyWithImpl<$Res>;
  $Res call({bool isPreview});
}

/// @nodoc
class _$ProblemCreatePageStateCopyWithImpl<$Res>
    implements $ProblemCreatePageStateCopyWith<$Res> {
  _$ProblemCreatePageStateCopyWithImpl(this._value, this._then);

  final ProblemCreatePageState _value;
  // ignore: unused_field
  final $Res Function(ProblemCreatePageState) _then;

  @override
  $Res call({
    Object? isPreview = freezed,
  }) {
    return _then(_value.copyWith(
      isPreview: isPreview == freezed
          ? _value.isPreview
          : isPreview // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$ProblemCreatePageStateCopyWith<$Res>
    implements $ProblemCreatePageStateCopyWith<$Res> {
  factory _$ProblemCreatePageStateCopyWith(_ProblemCreatePageState value,
          $Res Function(_ProblemCreatePageState) then) =
      __$ProblemCreatePageStateCopyWithImpl<$Res>;
  @override
  $Res call({bool isPreview});
}

/// @nodoc
class __$ProblemCreatePageStateCopyWithImpl<$Res>
    extends _$ProblemCreatePageStateCopyWithImpl<$Res>
    implements _$ProblemCreatePageStateCopyWith<$Res> {
  __$ProblemCreatePageStateCopyWithImpl(_ProblemCreatePageState _value,
      $Res Function(_ProblemCreatePageState) _then)
      : super(_value, (v) => _then(v as _ProblemCreatePageState));

  @override
  _ProblemCreatePageState get _value => super._value as _ProblemCreatePageState;

  @override
  $Res call({
    Object? isPreview = freezed,
  }) {
    return _then(_ProblemCreatePageState(
      isPreview: isPreview == freezed
          ? _value.isPreview
          : isPreview // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProblemCreatePageState
    with DiagnosticableTreeMixin
    implements _ProblemCreatePageState {
  const _$_ProblemCreatePageState({this.isPreview = false});

  factory _$_ProblemCreatePageState.fromJson(Map<String, dynamic> json) =>
      _$_$_ProblemCreatePageStateFromJson(json);

  @JsonKey(defaultValue: false)
  @override
  final bool isPreview;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProblemCreatePageState(isPreview: $isPreview)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ProblemCreatePageState'))
      ..add(DiagnosticsProperty('isPreview', isPreview));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ProblemCreatePageState &&
            (identical(other.isPreview, isPreview) ||
                const DeepCollectionEquality()
                    .equals(other.isPreview, isPreview)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(isPreview);

  @JsonKey(ignore: true)
  @override
  _$ProblemCreatePageStateCopyWith<_ProblemCreatePageState> get copyWith =>
      __$ProblemCreatePageStateCopyWithImpl<_ProblemCreatePageState>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ProblemCreatePageStateToJson(this);
  }
}

abstract class _ProblemCreatePageState implements ProblemCreatePageState {
  const factory _ProblemCreatePageState({bool isPreview}) =
      _$_ProblemCreatePageState;

  factory _ProblemCreatePageState.fromJson(Map<String, dynamic> json) =
      _$_ProblemCreatePageState.fromJson;

  @override
  bool get isPreview => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ProblemCreatePageStateCopyWith<_ProblemCreatePageState> get copyWith =>
      throw _privateConstructorUsedError;
}
