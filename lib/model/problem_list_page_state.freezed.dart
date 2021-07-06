// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'problem_list_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProblemListPageState _$ProblemListPageStateFromJson(Map<String, dynamic> json) {
  return _ProblemListPageState.fromJson(json);
}

/// @nodoc
class _$ProblemListPageStateTearOff {
  const _$ProblemListPageStateTearOff();

  _ProblemListPageState call(
      {bool isLoading = false, List<Problem> problems = const []}) {
    return _ProblemListPageState(
      isLoading: isLoading,
      problems: problems,
    );
  }

  ProblemListPageState fromJson(Map<String, Object> json) {
    return ProblemListPageState.fromJson(json);
  }
}

/// @nodoc
const $ProblemListPageState = _$ProblemListPageStateTearOff();

/// @nodoc
mixin _$ProblemListPageState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<Problem> get problems => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProblemListPageStateCopyWith<ProblemListPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProblemListPageStateCopyWith<$Res> {
  factory $ProblemListPageStateCopyWith(ProblemListPageState value,
          $Res Function(ProblemListPageState) then) =
      _$ProblemListPageStateCopyWithImpl<$Res>;
  $Res call({bool isLoading, List<Problem> problems});
}

/// @nodoc
class _$ProblemListPageStateCopyWithImpl<$Res>
    implements $ProblemListPageStateCopyWith<$Res> {
  _$ProblemListPageStateCopyWithImpl(this._value, this._then);

  final ProblemListPageState _value;
  // ignore: unused_field
  final $Res Function(ProblemListPageState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? problems = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      problems: problems == freezed
          ? _value.problems
          : problems // ignore: cast_nullable_to_non_nullable
              as List<Problem>,
    ));
  }
}

/// @nodoc
abstract class _$ProblemListPageStateCopyWith<$Res>
    implements $ProblemListPageStateCopyWith<$Res> {
  factory _$ProblemListPageStateCopyWith(_ProblemListPageState value,
          $Res Function(_ProblemListPageState) then) =
      __$ProblemListPageStateCopyWithImpl<$Res>;
  @override
  $Res call({bool isLoading, List<Problem> problems});
}

/// @nodoc
class __$ProblemListPageStateCopyWithImpl<$Res>
    extends _$ProblemListPageStateCopyWithImpl<$Res>
    implements _$ProblemListPageStateCopyWith<$Res> {
  __$ProblemListPageStateCopyWithImpl(
      _ProblemListPageState _value, $Res Function(_ProblemListPageState) _then)
      : super(_value, (v) => _then(v as _ProblemListPageState));

  @override
  _ProblemListPageState get _value => super._value as _ProblemListPageState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? problems = freezed,
  }) {
    return _then(_ProblemListPageState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      problems: problems == freezed
          ? _value.problems
          : problems // ignore: cast_nullable_to_non_nullable
              as List<Problem>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProblemListPageState
    with DiagnosticableTreeMixin
    implements _ProblemListPageState {
  const _$_ProblemListPageState(
      {this.isLoading = false, this.problems = const []});

  factory _$_ProblemListPageState.fromJson(Map<String, dynamic> json) =>
      _$_$_ProblemListPageStateFromJson(json);

  @JsonKey(defaultValue: false)
  @override
  final bool isLoading;
  @JsonKey(defaultValue: const [])
  @override
  final List<Problem> problems;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProblemListPageState(isLoading: $isLoading, problems: $problems)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ProblemListPageState'))
      ..add(DiagnosticsProperty('isLoading', isLoading))
      ..add(DiagnosticsProperty('problems', problems));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ProblemListPageState &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.problems, problems) ||
                const DeepCollectionEquality()
                    .equals(other.problems, problems)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(problems);

  @JsonKey(ignore: true)
  @override
  _$ProblemListPageStateCopyWith<_ProblemListPageState> get copyWith =>
      __$ProblemListPageStateCopyWithImpl<_ProblemListPageState>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ProblemListPageStateToJson(this);
  }
}

abstract class _ProblemListPageState implements ProblemListPageState {
  const factory _ProblemListPageState(
      {bool isLoading, List<Problem> problems}) = _$_ProblemListPageState;

  factory _ProblemListPageState.fromJson(Map<String, dynamic> json) =
      _$_ProblemListPageState.fromJson;

  @override
  bool get isLoading => throw _privateConstructorUsedError;
  @override
  List<Problem> get problems => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ProblemListPageStateCopyWith<_ProblemListPageState> get copyWith =>
      throw _privateConstructorUsedError;
}
