// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'scoreboard_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ScoreboardPageState _$ScoreboardPageStateFromJson(Map<String, dynamic> json) {
  return _ScoreboardPageState.fromJson(json);
}

/// @nodoc
class _$ScoreboardPageStateTearOff {
  const _$ScoreboardPageStateTearOff();

  _ScoreboardPageState call(
      {dynamic isLoading = false,
      List<Group> topRanking = const [],
      List<Group> nearRanking = const []}) {
    return _ScoreboardPageState(
      isLoading: isLoading,
      topRanking: topRanking,
      nearRanking: nearRanking,
    );
  }

  ScoreboardPageState fromJson(Map<String, Object> json) {
    return ScoreboardPageState.fromJson(json);
  }
}

/// @nodoc
const $ScoreboardPageState = _$ScoreboardPageStateTearOff();

/// @nodoc
mixin _$ScoreboardPageState {
  dynamic get isLoading => throw _privateConstructorUsedError;
  List<Group> get topRanking => throw _privateConstructorUsedError;
  List<Group> get nearRanking => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ScoreboardPageStateCopyWith<ScoreboardPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScoreboardPageStateCopyWith<$Res> {
  factory $ScoreboardPageStateCopyWith(
          ScoreboardPageState value, $Res Function(ScoreboardPageState) then) =
      _$ScoreboardPageStateCopyWithImpl<$Res>;
  $Res call(
      {dynamic isLoading, List<Group> topRanking, List<Group> nearRanking});
}

/// @nodoc
class _$ScoreboardPageStateCopyWithImpl<$Res>
    implements $ScoreboardPageStateCopyWith<$Res> {
  _$ScoreboardPageStateCopyWithImpl(this._value, this._then);

  final ScoreboardPageState _value;
  // ignore: unused_field
  final $Res Function(ScoreboardPageState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? topRanking = freezed,
    Object? nearRanking = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as dynamic,
      topRanking: topRanking == freezed
          ? _value.topRanking
          : topRanking // ignore: cast_nullable_to_non_nullable
              as List<Group>,
      nearRanking: nearRanking == freezed
          ? _value.nearRanking
          : nearRanking // ignore: cast_nullable_to_non_nullable
              as List<Group>,
    ));
  }
}

/// @nodoc
abstract class _$ScoreboardPageStateCopyWith<$Res>
    implements $ScoreboardPageStateCopyWith<$Res> {
  factory _$ScoreboardPageStateCopyWith(_ScoreboardPageState value,
          $Res Function(_ScoreboardPageState) then) =
      __$ScoreboardPageStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {dynamic isLoading, List<Group> topRanking, List<Group> nearRanking});
}

/// @nodoc
class __$ScoreboardPageStateCopyWithImpl<$Res>
    extends _$ScoreboardPageStateCopyWithImpl<$Res>
    implements _$ScoreboardPageStateCopyWith<$Res> {
  __$ScoreboardPageStateCopyWithImpl(
      _ScoreboardPageState _value, $Res Function(_ScoreboardPageState) _then)
      : super(_value, (v) => _then(v as _ScoreboardPageState));

  @override
  _ScoreboardPageState get _value => super._value as _ScoreboardPageState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? topRanking = freezed,
    Object? nearRanking = freezed,
  }) {
    return _then(_ScoreboardPageState(
      isLoading: isLoading == freezed ? _value.isLoading : isLoading,
      topRanking: topRanking == freezed
          ? _value.topRanking
          : topRanking // ignore: cast_nullable_to_non_nullable
              as List<Group>,
      nearRanking: nearRanking == freezed
          ? _value.nearRanking
          : nearRanking // ignore: cast_nullable_to_non_nullable
              as List<Group>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ScoreboardPageState
    with DiagnosticableTreeMixin
    implements _ScoreboardPageState {
  const _$_ScoreboardPageState(
      {this.isLoading = false,
      this.topRanking = const [],
      this.nearRanking = const []});

  factory _$_ScoreboardPageState.fromJson(Map<String, dynamic> json) =>
      _$_$_ScoreboardPageStateFromJson(json);

  @JsonKey(defaultValue: false)
  @override
  final dynamic isLoading;
  @JsonKey(defaultValue: const [])
  @override
  final List<Group> topRanking;
  @JsonKey(defaultValue: const [])
  @override
  final List<Group> nearRanking;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ScoreboardPageState(isLoading: $isLoading, topRanking: $topRanking, nearRanking: $nearRanking)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ScoreboardPageState'))
      ..add(DiagnosticsProperty('isLoading', isLoading))
      ..add(DiagnosticsProperty('topRanking', topRanking))
      ..add(DiagnosticsProperty('nearRanking', nearRanking));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ScoreboardPageState &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.topRanking, topRanking) ||
                const DeepCollectionEquality()
                    .equals(other.topRanking, topRanking)) &&
            (identical(other.nearRanking, nearRanking) ||
                const DeepCollectionEquality()
                    .equals(other.nearRanking, nearRanking)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(topRanking) ^
      const DeepCollectionEquality().hash(nearRanking);

  @JsonKey(ignore: true)
  @override
  _$ScoreboardPageStateCopyWith<_ScoreboardPageState> get copyWith =>
      __$ScoreboardPageStateCopyWithImpl<_ScoreboardPageState>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ScoreboardPageStateToJson(this);
  }
}

abstract class _ScoreboardPageState implements ScoreboardPageState {
  const factory _ScoreboardPageState(
      {dynamic isLoading,
      List<Group> topRanking,
      List<Group> nearRanking}) = _$_ScoreboardPageState;

  factory _ScoreboardPageState.fromJson(Map<String, dynamic> json) =
      _$_ScoreboardPageState.fromJson;

  @override
  dynamic get isLoading => throw _privateConstructorUsedError;
  @override
  List<Group> get topRanking => throw _privateConstructorUsedError;
  @override
  List<Group> get nearRanking => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ScoreboardPageStateCopyWith<_ScoreboardPageState> get copyWith =>
      throw _privateConstructorUsedError;
}
