// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

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

  _ProblemPageState call(
      {bool isLoading = false,
      bool isFetchLoading = false,
      Problem? problem,
      List<Answer> answers = const []}) {
    return _ProblemPageState(
      isLoading: isLoading,
      isFetchLoading: isFetchLoading,
      problem: problem,
      answers: answers,
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
  bool get isFetchLoading => throw _privateConstructorUsedError;
  Problem? get problem => throw _privateConstructorUsedError;
  List<Answer> get answers => throw _privateConstructorUsedError;

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
  $Res call(
      {bool isLoading,
      bool isFetchLoading,
      Problem? problem,
      List<Answer> answers});

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
    Object? isFetchLoading = freezed,
    Object? problem = freezed,
    Object? answers = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isFetchLoading: isFetchLoading == freezed
          ? _value.isFetchLoading
          : isFetchLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      problem: problem == freezed
          ? _value.problem
          : problem // ignore: cast_nullable_to_non_nullable
              as Problem?,
      answers: answers == freezed
          ? _value.answers
          : answers // ignore: cast_nullable_to_non_nullable
              as List<Answer>,
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
  $Res call(
      {bool isLoading,
      bool isFetchLoading,
      Problem? problem,
      List<Answer> answers});

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
    Object? isFetchLoading = freezed,
    Object? problem = freezed,
    Object? answers = freezed,
  }) {
    return _then(_ProblemPageState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isFetchLoading: isFetchLoading == freezed
          ? _value.isFetchLoading
          : isFetchLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      problem: problem == freezed
          ? _value.problem
          : problem // ignore: cast_nullable_to_non_nullable
              as Problem?,
      answers: answers == freezed
          ? _value.answers
          : answers // ignore: cast_nullable_to_non_nullable
              as List<Answer>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProblemPageState
    with DiagnosticableTreeMixin
    implements _ProblemPageState {
  const _$_ProblemPageState(
      {this.isLoading = false,
      this.isFetchLoading = false,
      this.problem,
      this.answers = const []});

  factory _$_ProblemPageState.fromJson(Map<String, dynamic> json) =>
      _$$_ProblemPageStateFromJson(json);

  @JsonKey(defaultValue: false)
  @override
  final bool isLoading;
  @JsonKey(defaultValue: false)
  @override
  final bool isFetchLoading;
  @override
  final Problem? problem;
  @JsonKey(defaultValue: const [])
  @override
  final List<Answer> answers;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProblemPageState(isLoading: $isLoading, isFetchLoading: $isFetchLoading, problem: $problem, answers: $answers)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ProblemPageState'))
      ..add(DiagnosticsProperty('isLoading', isLoading))
      ..add(DiagnosticsProperty('isFetchLoading', isFetchLoading))
      ..add(DiagnosticsProperty('problem', problem))
      ..add(DiagnosticsProperty('answers', answers));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ProblemPageState &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.isFetchLoading, isFetchLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isFetchLoading, isFetchLoading)) &&
            (identical(other.problem, problem) ||
                const DeepCollectionEquality()
                    .equals(other.problem, problem)) &&
            (identical(other.answers, answers) ||
                const DeepCollectionEquality().equals(other.answers, answers)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(isFetchLoading) ^
      const DeepCollectionEquality().hash(problem) ^
      const DeepCollectionEquality().hash(answers);

  @JsonKey(ignore: true)
  @override
  _$ProblemPageStateCopyWith<_ProblemPageState> get copyWith =>
      __$ProblemPageStateCopyWithImpl<_ProblemPageState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProblemPageStateToJson(this);
  }
}

abstract class _ProblemPageState implements ProblemPageState {
  const factory _ProblemPageState(
      {bool isLoading,
      bool isFetchLoading,
      Problem? problem,
      List<Answer> answers}) = _$_ProblemPageState;

  factory _ProblemPageState.fromJson(Map<String, dynamic> json) =
      _$_ProblemPageState.fromJson;

  @override
  bool get isLoading => throw _privateConstructorUsedError;
  @override
  bool get isFetchLoading => throw _privateConstructorUsedError;
  @override
  Problem? get problem => throw _privateConstructorUsedError;
  @override
  List<Answer> get answers => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ProblemPageStateCopyWith<_ProblemPageState> get copyWith =>
      throw _privateConstructorUsedError;
}
