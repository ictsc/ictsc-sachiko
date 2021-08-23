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

  _ScoreboardPageState call({dynamic isLoading = false}) {
    return _ScoreboardPageState(
      isLoading: isLoading,
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
  $Res call({dynamic isLoading});
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
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as dynamic,
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
  $Res call({dynamic isLoading});
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
  }) {
    return _then(_ScoreboardPageState(
      isLoading: isLoading == freezed ? _value.isLoading : isLoading,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ScoreboardPageState
    with DiagnosticableTreeMixin
    implements _ScoreboardPageState {
  const _$_ScoreboardPageState({this.isLoading = false});

  factory _$_ScoreboardPageState.fromJson(Map<String, dynamic> json) =>
      _$_$_ScoreboardPageStateFromJson(json);

  @JsonKey(defaultValue: false)
  @override
  final dynamic isLoading;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ScoreboardPageState(isLoading: $isLoading)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ScoreboardPageState'))
      ..add(DiagnosticsProperty('isLoading', isLoading));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ScoreboardPageState &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(isLoading);

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
  const factory _ScoreboardPageState({dynamic isLoading}) =
      _$_ScoreboardPageState;

  factory _ScoreboardPageState.fromJson(Map<String, dynamic> json) =
      _$_ScoreboardPageState.fromJson;

  @override
  dynamic get isLoading => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ScoreboardPageStateCopyWith<_ScoreboardPageState> get copyWith =>
      throw _privateConstructorUsedError;
}
