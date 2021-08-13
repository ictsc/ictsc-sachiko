// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'answer_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AnswerPageState _$AnswerPageStateFromJson(Map<String, dynamic> json) {
  return _AnswerPageState.fromJson(json);
}

/// @nodoc
class _$AnswerPageStateTearOff {
  const _$AnswerPageStateTearOff();

  _AnswerPageState call(
      {bool isLoading = false,
      Problem? problem,
      List<Answer> answers = const [],
      bool isLatest = true}) {
    return _AnswerPageState(
      isLoading: isLoading,
      problem: problem,
      answers: answers,
      isLatest: isLatest,
    );
  }

  AnswerPageState fromJson(Map<String, Object> json) {
    return AnswerPageState.fromJson(json);
  }
}

/// @nodoc
const $AnswerPageState = _$AnswerPageStateTearOff();

/// @nodoc
mixin _$AnswerPageState {
  bool get isLoading => throw _privateConstructorUsedError;
  Problem? get problem => throw _privateConstructorUsedError;
  List<Answer> get answers => throw _privateConstructorUsedError;
  bool get isLatest => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AnswerPageStateCopyWith<AnswerPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnswerPageStateCopyWith<$Res> {
  factory $AnswerPageStateCopyWith(
          AnswerPageState value, $Res Function(AnswerPageState) then) =
      _$AnswerPageStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading, Problem? problem, List<Answer> answers, bool isLatest});

  $ProblemCopyWith<$Res>? get problem;
}

/// @nodoc
class _$AnswerPageStateCopyWithImpl<$Res>
    implements $AnswerPageStateCopyWith<$Res> {
  _$AnswerPageStateCopyWithImpl(this._value, this._then);

  final AnswerPageState _value;
  // ignore: unused_field
  final $Res Function(AnswerPageState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? problem = freezed,
    Object? answers = freezed,
    Object? isLatest = freezed,
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
      answers: answers == freezed
          ? _value.answers
          : answers // ignore: cast_nullable_to_non_nullable
              as List<Answer>,
      isLatest: isLatest == freezed
          ? _value.isLatest
          : isLatest // ignore: cast_nullable_to_non_nullable
              as bool,
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
abstract class _$AnswerPageStateCopyWith<$Res>
    implements $AnswerPageStateCopyWith<$Res> {
  factory _$AnswerPageStateCopyWith(
          _AnswerPageState value, $Res Function(_AnswerPageState) then) =
      __$AnswerPageStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading, Problem? problem, List<Answer> answers, bool isLatest});

  @override
  $ProblemCopyWith<$Res>? get problem;
}

/// @nodoc
class __$AnswerPageStateCopyWithImpl<$Res>
    extends _$AnswerPageStateCopyWithImpl<$Res>
    implements _$AnswerPageStateCopyWith<$Res> {
  __$AnswerPageStateCopyWithImpl(
      _AnswerPageState _value, $Res Function(_AnswerPageState) _then)
      : super(_value, (v) => _then(v as _AnswerPageState));

  @override
  _AnswerPageState get _value => super._value as _AnswerPageState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? problem = freezed,
    Object? answers = freezed,
    Object? isLatest = freezed,
  }) {
    return _then(_AnswerPageState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      problem: problem == freezed
          ? _value.problem
          : problem // ignore: cast_nullable_to_non_nullable
              as Problem?,
      answers: answers == freezed
          ? _value.answers
          : answers // ignore: cast_nullable_to_non_nullable
              as List<Answer>,
      isLatest: isLatest == freezed
          ? _value.isLatest
          : isLatest // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AnswerPageState
    with DiagnosticableTreeMixin
    implements _AnswerPageState {
  const _$_AnswerPageState(
      {this.isLoading = false,
      this.problem,
      this.answers = const [],
      this.isLatest = true});

  factory _$_AnswerPageState.fromJson(Map<String, dynamic> json) =>
      _$_$_AnswerPageStateFromJson(json);

  @JsonKey(defaultValue: false)
  @override
  final bool isLoading;
  @override
  final Problem? problem;
  @JsonKey(defaultValue: const [])
  @override
  final List<Answer> answers;
  @JsonKey(defaultValue: true)
  @override
  final bool isLatest;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AnswerPageState(isLoading: $isLoading, problem: $problem, answers: $answers, isLatest: $isLatest)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AnswerPageState'))
      ..add(DiagnosticsProperty('isLoading', isLoading))
      ..add(DiagnosticsProperty('problem', problem))
      ..add(DiagnosticsProperty('answers', answers))
      ..add(DiagnosticsProperty('isLatest', isLatest));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AnswerPageState &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.problem, problem) ||
                const DeepCollectionEquality()
                    .equals(other.problem, problem)) &&
            (identical(other.answers, answers) ||
                const DeepCollectionEquality()
                    .equals(other.answers, answers)) &&
            (identical(other.isLatest, isLatest) ||
                const DeepCollectionEquality()
                    .equals(other.isLatest, isLatest)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(problem) ^
      const DeepCollectionEquality().hash(answers) ^
      const DeepCollectionEquality().hash(isLatest);

  @JsonKey(ignore: true)
  @override
  _$AnswerPageStateCopyWith<_AnswerPageState> get copyWith =>
      __$AnswerPageStateCopyWithImpl<_AnswerPageState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_AnswerPageStateToJson(this);
  }
}

abstract class _AnswerPageState implements AnswerPageState {
  const factory _AnswerPageState(
      {bool isLoading,
      Problem? problem,
      List<Answer> answers,
      bool isLatest}) = _$_AnswerPageState;

  factory _AnswerPageState.fromJson(Map<String, dynamic> json) =
      _$_AnswerPageState.fromJson;

  @override
  bool get isLoading => throw _privateConstructorUsedError;
  @override
  Problem? get problem => throw _privateConstructorUsedError;
  @override
  List<Answer> get answers => throw _privateConstructorUsedError;
  @override
  bool get isLatest => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AnswerPageStateCopyWith<_AnswerPageState> get copyWith =>
      throw _privateConstructorUsedError;
}
