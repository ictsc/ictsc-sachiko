// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'problem_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProblemPageState _$ProblemPageStateFromJson(Map<String, dynamic> json) {
  return _ProblemPageState.fromJson(json);
}

/// @nodoc
class _$ProblemPageStateTearOff {
  const _$ProblemPageStateTearOff();

  _ProblemPageState call({bool isLoading = false, Problem? problem}) {
    return _ProblemPageState(
      isLoading: isLoading,
      problem: problem,
    );
  }

  ProblemPageState fromJson(Map<String, Object> json) {
    return ProblemPageState.fromJson(json);
  }
}

/// @nodoc
const $ProblemPageState = _$ProblemPageStateTearOff();

/// @nodoc
mixin _$ProblemPageState {
  bool get isLoading => throw _privateConstructorUsedError;
  Problem? get problem => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProblemPageStateCopyWith<ProblemPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProblemPageStateCopyWith<$Res> {
  factory $ProblemPageStateCopyWith(
          ProblemPageState value, $Res Function(ProblemPageState) then) =
      _$ProblemPageStateCopyWithImpl<$Res>;
  $Res call({bool isLoading, Problem? problem});

  $ProblemCopyWith<$Res>? get problem;
}

/// @nodoc
class _$ProblemPageStateCopyWithImpl<$Res>
    implements $ProblemPageStateCopyWith<$Res> {
  _$ProblemPageStateCopyWithImpl(this._value, this._then);

  final ProblemPageState _value;
  // ignore: unused_field
  final $Res Function(ProblemPageState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? problem = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      problem: problem == freezed
          ? _value.problem
          : problem // ignore: cast_nullable_to_non_nullable
              as Problem?,
    ));
  }

  @override
  $ProblemCopyWith<$Res>? get problem {
    if (_value.problem == null) {
      return null;
    }

    return $ProblemCopyWith<$Res>(_value.problem!, (value) {
      return _then(_value.copyWith(problem: value));
    });
  }
}

/// @nodoc
abstract class _$ProblemPageStateCopyWith<$Res>
    implements $ProblemPageStateCopyWith<$Res> {
  factory _$ProblemPageStateCopyWith(
          _ProblemPageState value, $Res Function(_ProblemPageState) then) =
      __$ProblemPageStateCopyWithImpl<$Res>;
  @override
  $Res call({bool isLoading, Problem? problem});

  @override
  $ProblemCopyWith<$Res>? get problem;
}

/// @nodoc
class __$ProblemPageStateCopyWithImpl<$Res>
    extends _$ProblemPageStateCopyWithImpl<$Res>
    implements _$ProblemPageStateCopyWith<$Res> {
  __$ProblemPageStateCopyWithImpl(
      _ProblemPageState _value, $Res Function(_ProblemPageState) _then)
      : super(_value, (v) => _then(v as _ProblemPageState));

  @override
  _ProblemPageState get _value => super._value as _ProblemPageState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? problem = freezed,
  }) {
    return _then(_ProblemPageState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      problem: problem == freezed
          ? _value.problem
          : problem // ignore: cast_nullable_to_non_nullable
              as Problem?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProblemPageState
    with DiagnosticableTreeMixin
    implements _ProblemPageState {
  const _$_ProblemPageState({this.isLoading = false, this.problem});

  factory _$_ProblemPageState.fromJson(Map<String, dynamic> json) =>
      _$_$_ProblemPageStateFromJson(json);

  @JsonKey(defaultValue: false)
  @override
  final bool isLoading;
  @override
  final Problem? problem;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProblemPageState(isLoading: $isLoading, problem: $problem)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ProblemPageState'))
      ..add(DiagnosticsProperty('isLoading', isLoading))
      ..add(DiagnosticsProperty('problem', problem));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ProblemPageState &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.problem, problem) ||
                const DeepCollectionEquality().equals(other.problem, problem)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(problem);

  @JsonKey(ignore: true)
  @override
  _$ProblemPageStateCopyWith<_ProblemPageState> get copyWith =>
      __$ProblemPageStateCopyWithImpl<_ProblemPageState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ProblemPageStateToJson(this);
  }
}

abstract class _ProblemPageState implements ProblemPageState {
  const factory _ProblemPageState({bool isLoading, Problem? problem}) =
      _$_ProblemPageState;

  factory _ProblemPageState.fromJson(Map<String, dynamic> json) =
      _$_ProblemPageState.fromJson;

  @override
  bool get isLoading => throw _privateConstructorUsedError;
  @override
  Problem? get problem => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ProblemPageStateCopyWith<_ProblemPageState> get copyWith =>
      throw _privateConstructorUsedError;
}